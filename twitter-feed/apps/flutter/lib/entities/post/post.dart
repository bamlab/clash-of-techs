import 'package:clash_of_techs_twitter_feed/entities/author/author.dart';
import 'package:clash_of_techs_twitter_feed/entities/image/image.dart';
import 'package:clash_of_techs_twitter_feed/entities/public_metrics/public_metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required String text,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    required Image? image,
    required Author author,
    required PublicMetrics publicMetrics,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
