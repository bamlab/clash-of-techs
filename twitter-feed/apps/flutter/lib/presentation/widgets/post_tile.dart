import 'package:clash_of_techs_twitter_feed/domain/entities/post/post.dart';
import 'package:clash_of_techs_twitter_feed/presentation/widgets/avatar.dart';
import 'package:flutter/widgets.dart';

class PostHeader extends StatelessWidget {
  final Post post;
  const PostHeader({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          style: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class PostTile extends StatelessWidget {
  final Post post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Avatar(imageUrl: post.author.profileImageUrl),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(post: post),
            Text(post.text),
          ],
        )),
      ],
    );
  }
}
