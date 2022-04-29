import 'dart:convert';

import 'package:clash_of_techs_twitter_feed/domain/entities/feed/feed.dart';
import 'package:clash_of_techs_twitter_feed/domain/entities/post/post.dart';
import 'package:flutter/services.dart' as root_bundle;

class FeedJsonDataSource {
  static Future<Feed> loadFromJson({required String filename}) async {
    final jsondata = await root_bundle.rootBundle.loadString(filename);
    final list = json.decode(jsondata) as List<dynamic>;
    return Feed(posts: list.map((e) => Post.fromJson(e)).toList());
  }
}
