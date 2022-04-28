import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_metrics.freezed.dart';
part 'public_metrics.g.dart';

@freezed
class PublicMetrics with _$PublicMetrics {
  const factory PublicMetrics({
    required int retweetCount,
    required int replyCount,
    required int likeCount,
    required int quoteCount,
  }) = _PublicMetrics;

  factory PublicMetrics.fromJson(Map<String, Object?> json) =>
      _$PublicMetricsFromJson(json);
}
