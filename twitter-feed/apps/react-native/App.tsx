/* eslint-disable react-native/no-inline-styles */
import React, {memo} from 'react';
import {
  ActivityIndicator,
  FlatList,
  Image,
  PixelRatio,
  StatusBar,
  Text,
  useColorScheme,
  View,
} from 'react-native';

import feed from './feed.json';
import _ from 'lodash';
import {format} from 'date-fns';
import Icon from 'react-native-vector-icons/EvilIcons';
import {Tweet} from './feedBuilder';
import {useState} from 'react';
import {useEffect} from 'react';

const Metric = ({iconName, value}: {iconName: string; value: number}) => (
  <View style={{flexDirection: 'row', flex: 1, alignItems: 'center'}}>
    <Icon name={iconName} size={24} style={{paddingRight: 5, color: '#444'}} />
    {value ? <Text style={{color: '#444'}}>{value}</Text> : null}
  </View>
);

const TweetItem = ({tweet}: {tweet: Tweet}) => {
  const [showTweet, setShowTweet] = useState(false);

  useEffect(() => {
    setTimeout(() => setShowTweet(true), 1000);
  }, []);

  return showTweet ? (
    <View key={tweet.id}>
      <View style={{flexDirection: 'row', paddingHorizontal: 10}}>
        <View style={{paddingRight: 10}}>
          <Image
            source={{uri: tweet.author.profile_image_url}}
            style={{
              height: 48,
              width: 48,
              borderRadius: 24,
            }}
          />
        </View>
        <View style={{flex: 1}}>
          <Text>
            <Text style={{flex: 1}} numberOfLines={1}>
              <Text style={{fontWeight: 'bold', color: 'black'}}>
                {tweet.author.name}
              </Text>
              <Text style={{color: '#444'}}> @{tweet.author.username}</Text>
            </Text>
            <Text style={{color: '#444'}}>
              {' '}
              · {format(new Date(tweet.createdAt), 'dd MMM')}
            </Text>
          </Text>

          <Text style={{marginVertical: 5, color: 'black'}}>{tweet.text}</Text>
          {tweet.image ? (
            <Image
              source={{uri: tweet.image.url}}
              style={{
                aspectRatio: tweet.image.width / tweet.image.height,
                width: '100%',
                borderRadius: 10,
                marginVertical: 5,
              }}
            />
          ) : null}
          <View style={{flexDirection: 'row', paddingTop: 5}}>
            <Metric
              iconName="comment"
              value={tweet.public_metrics.quote_count}
            />
            <Metric
              iconName="retweet"
              value={tweet.public_metrics.retweet_count}
            />
            <Metric iconName="heart" value={tweet.public_metrics.like_count} />
            <Icon
              name="share-google"
              size={24}
              color="#444"
              style={{flex: 1}}
            />
          </View>
        </View>
      </View>
    </View>
  ) : (
    <ActivityIndicator />
  );
};

const MemoizedItem = memo(TweetItem);

const renderItem = ({item}: {item: Tweet}) => <MemoizedItem tweet={item} />;
const keyExtractor = ({id}: Tweet) => id;

const App = () => {
  const isDarkMode = useColorScheme() === 'dark';

  return (
    <>
      <StatusBar barStyle={isDarkMode ? 'light-content' : 'dark-content'} />
      <FlatList
        keyExtractor={keyExtractor}
        renderItem={renderItem}
        data={feed}
        ItemSeparatorComponent={() => (
          <View
            style={{
              marginVertical: 10,
              height: 1 / PixelRatio.get(),
              backgroundColor: '#bbb',
              width: '100%',
            }}
          />
        )}
        contentInsetAdjustmentBehavior="automatic"
      />
    </>
  );
};

export default App;
