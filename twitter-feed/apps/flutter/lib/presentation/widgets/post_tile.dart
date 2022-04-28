import 'package:clash_of_techs_twitter_feed/domain/entities/post/post.dart';
import 'package:clash_of_techs_twitter_feed/domain/entities/public_metrics/public_metrics.dart';
import 'package:clash_of_techs_twitter_feed/presentation/widgets/avatar.dart';
import 'package:clash_of_techs_twitter_feed/presentation/widgets/public_metric_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostHeader extends StatelessWidget {
  final Post post;
  const PostHeader({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 3.0),
          child: Text(
            post.author.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          '@${post.author.username}',
          style: TextStyle(color: Colors.grey.shade600),
        ),
        Text(' · ', style: TextStyle(color: Colors.grey.shade600)),
        Text(
          DateFormat.MMMd().format(post.createdAt),
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}

class PostBody extends StatelessWidget {
  final Post post;
  const PostBody({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(post.text);
  }
}

class PostFooter extends StatelessWidget {
  final Post post;
  const PostFooter({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublicMetricWidget(
            type: PublicMetricType.reply,
            value: post.publicMetrics.replyCount,
          ),
          PublicMetricWidget(
            type: PublicMetricType.retweet,
            value: post.publicMetrics.retweetCount,
          ),
          PublicMetricWidget(
            type: PublicMetricType.like,
            value: post.publicMetrics.likeCount,
          ),
          Icon(Icons.share_outlined, color: Colors.grey.shade600),
        ],
      ),
    );
  }
}

class PostTile extends StatelessWidget {
  final Post post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Avatar(imageUrl: post.author.profileImageUrl),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostHeader(post: post),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PostBody(post: post),
              ),
              PostFooter(post: post),
            ],
          )),
        ],
      ),
    );
  }
}
