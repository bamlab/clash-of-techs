import 'package:clash_of_techs_twitter_feed/domain/entities/post/post.dart';
import 'package:flutter/widgets.dart';

class PostTile extends StatelessWidget {
  final Post post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(post.text);
  }
}
