import fetch from 'node-fetch';
import _ from 'lodash';
import fs from 'fs';

const BEARER_TOKEN = process.env.BEARER_TOKEN;

interface APITweet {
  author_id: string;
  public_metrics: {
    retweet_count: number;
    reply_count: number;
    like_count: number;
    quote_count: number;
  };
  created_at: string;
  referenced_tweets?: {
    type: string;
    id: string;
  }[];
  text: string;
  attachments?: {
    media_keys: string[];
  };
  id: string;
}

export interface Tweet {
  id: string;
  text: string;
  public_metrics: APITweet['public_metrics'];
  createdAt: APITweet['created_at'];
  image: {url: string; width: number; height: number} | null;
  author: {
    name: string;
    profile_image_url: string;
    username: string;
  };
}

const fetchPage = async (pagination_token: string | null) => {
  const response = await fetch(
    'https://api.twitter.com/2/users/2883876597/tweets?max_results=100&expansions=author_id,referenced_tweets.id,attachments.media_keys,referenced_tweets.id.author_id&tweet.fields=created_at,public_metrics&user.fields=username,profile_image_url&media.fields=height,url,width' +
      (pagination_token ? `&pagination_token=${pagination_token}` : ''),
    {
      headers: {
        Authorization: `Bearer ${BEARER_TOKEN}`,
        Accept: 'application/json',
        'Content-Type': 'application/json',
      },
    },
  );

  return await response.json();
};

const writeOriginalFeed = async () => {
  let pagination_token = null;
  let feed = [];
  do {
    const results: any = await fetchPage(pagination_token);
    feed.push(results);

    console.log('PAGE', feed.length);

    pagination_token = results.meta.next_token;
  } while (pagination_token);

  fs.writeFileSync('./apiTweets.json', JSON.stringify(feed, null, 2));
};

const rewriteFeed = async () => {
  const apiFeed = JSON.parse(fs.readFileSync('./apiTweets.json').toString());

  let newFeed: Tweet[] = [];
  for (const feedPage of apiFeed) {
    const mediaPool = _.keyBy(
      feedPage.includes.media,
      media => media.media_key,
    );
    const userPool = _.keyBy(feedPage.includes.users, user => user.id);
    const tweetPool = _.keyBy(feedPage.includes.tweets, tweet => tweet.id);

    const buildTweet = (tweet: APITweet): Tweet => {
      const referenceTweetId = tweet.referenced_tweets?.[0]?.id;
      if (referenceTweetId) {
        const referencedTweet = tweetPool[referenceTweetId];

        if (referencedTweet) {
          return buildTweet(referencedTweet);
        }
      }

      const author = userPool[tweet.author_id];

      const mediaKey = tweet.attachments?.media_keys?.[0];
      const image = mediaKey ? mediaPool[mediaKey] : null;

      return {
        id: tweet.id,
        text: tweet.text
          .split('\n\nhttps://t.co')[0]
          .split('\nhttps://t.co')[0]
          .split('https://t.co')[0],
        image: image,
        author: {
          ...author,
          profile_image_url: author.profile_image_url
            .replace('normal.png', 'bigger.png')
            .replace('normal.jpg', 'bigger.jpg'),
        },
        createdAt: tweet.created_at,
        public_metrics: tweet.public_metrics,
      };
    };

    newFeed = newFeed.concat(feedPage.data.map(buildTweet));
  }

  newFeed = _.uniqBy(newFeed, (tweet: Tweet) => tweet.id);

  fs.writeFileSync('../feed.json', JSON.stringify(newFeed, null, 2));
};

rewriteFeed();
