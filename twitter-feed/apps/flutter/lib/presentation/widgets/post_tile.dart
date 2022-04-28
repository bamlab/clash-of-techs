import 'package:clash_of_techs_twitter_feed/domain/entities/post/post.dart';
import 'package:clash_of_techs_twitter_feed/presentation/widgets/avatar.dart';
import 'package:flutter/widgets.dart';

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
        Expanded(child: Text(post.text)),
      ],
    );
  }
}
