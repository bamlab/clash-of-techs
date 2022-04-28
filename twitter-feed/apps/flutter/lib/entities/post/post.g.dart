// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      publicMetrics:
          PublicMetrics.fromJson(json['publicMetrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'image': instance.image,
      'author': instance.author,
      'publicMetrics': instance.publicMetrics,
    };
