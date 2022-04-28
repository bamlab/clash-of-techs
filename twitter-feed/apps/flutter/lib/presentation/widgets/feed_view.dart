import 'package:flutter/material.dart';
import 'package:clash_of_techs_twitter_feed/domain/entities/feed/feed.dart';
import 'package:clash_of_techs_twitter_feed/presentation/widgets/post_tile.dart';

class FeedView extends StatelessWidget {
  final Feed feed;
  const FeedView({Key? key, required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: feed.posts.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => ListTile(
        title: PostTile(post: feed.posts[index]),
      ),
    );
  }
}
