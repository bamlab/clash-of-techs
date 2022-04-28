// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicMetrics _$$_PublicMetricsFromJson(Map<String, dynamic> json) =>
    _$_PublicMetrics(
      retweetCount: json['retweet_count'] as int,
      replyCount: json['reply_count'] as int,
      likeCount: json['like_count'] as int,
      quoteCount: json['quote_count'] as int,
    );

Map<String, dynamic> _$$_PublicMetricsToJson(_$_PublicMetrics instance) =>
    <String, dynamic>{
      'retweet_count': instance.retweetCount,
      'reply_count': instance.replyCount,
      'like_count': instance.likeCount,
      'quote_count': instance.quoteCount,
    };
