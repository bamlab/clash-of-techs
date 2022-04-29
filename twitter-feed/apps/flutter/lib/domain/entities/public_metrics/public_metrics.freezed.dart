// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'public_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicMetrics _$PublicMetricsFromJson(Map<String, dynamic> json) {
  return _PublicMetrics.fromJson(json);
}

/// @nodoc
mixin _$PublicMetrics {
  int get retweetCount => throw _privateConstructorUsedError;
  int get replyCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get quoteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicMetricsCopyWith<PublicMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicMetricsCopyWith<$Res> {
  factory $PublicMetricsCopyWith(
          PublicMetrics value, $Res Function(PublicMetrics) then) =
      _$PublicMetricsCopyWithImpl<$Res>;
  $Res call({int retweetCount, int replyCount, int likeCount, int quoteCount});
}

/// @nodoc
class _$PublicMetricsCopyWithImpl<$Res>
    implements $PublicMetricsCopyWith<$Res> {
  _$PublicMetricsCopyWithImpl(this._value, this._then);

  final PublicMetrics _value;
  // ignore: unused_field
  final $Res Function(PublicMetrics) _then;

  @override
  $Res call({
    Object? retweetCount = freezed,
    Object? replyCount = freezed,
    Object? likeCount = freezed,
    Object? quoteCount = freezed,
  }) {
    return _then(_value.copyWith(
      retweetCount: retweetCount == freezed
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      quoteCount: quoteCount == freezed
          ? _value.quoteCount
          : quoteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PublicMetricsCopyWith<$Res>
    implements $PublicMetricsCopyWith<$Res> {
  factory _$PublicMetricsCopyWith(
          _PublicMetrics value, $Res Function(_PublicMetrics) then) =
      __$PublicMetricsCopyWithImpl<$Res>;
  @override
  $Res call({int retweetCount, int replyCount, int likeCount, int quoteCount});
}

/// @nodoc
class __$PublicMetricsCopyWithImpl<$Res>
    extends _$PublicMetricsCopyWithImpl<$Res>
    implements _$PublicMetricsCopyWith<$Res> {
  __$PublicMetricsCopyWithImpl(
      _PublicMetrics _value, $Res Function(_PublicMetrics) _then)
      : super(_value, (v) => _then(v as _PublicMetrics));

  @override
  _PublicMetrics get _value => super._value as _PublicMetrics;

  @override
  $Res call({
    Object? retweetCount = freezed,
    Object? replyCount = freezed,
    Object? likeCount = freezed,
    Object? quoteCount = freezed,
  }) {
    return _then(_PublicMetrics(
      retweetCount: retweetCount == freezed
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      quoteCount: quoteCount == freezed
          ? _value.quoteCount
          : quoteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublicMetrics implements _PublicMetrics {
  const _$_PublicMetrics(
      {required this.retweetCount,
      required this.replyCount,
      required this.likeCount,
      required this.quoteCount});

  factory _$_PublicMetrics.fromJson(Map<String, dynamic> json) =>
      _$$_PublicMetricsFromJson(json);

  @override
  final int retweetCount;
  @override
  final int replyCount;
  @override
  final int likeCount;
  @override
  final int quoteCount;

  @override
  String toString() {
    return 'PublicMetrics(retweetCount: $retweetCount, replyCount: $replyCount, likeCount: $likeCount, quoteCount: $quoteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PublicMetrics &&
            const DeepCollectionEquality()
                .equals(other.retweetCount, retweetCount) &&
            const DeepCollectionEquality()
                .equals(other.replyCount, replyCount) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.quoteCount, quoteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(retweetCount),
      const DeepCollectionEquality().hash(replyCount),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(quoteCount));

  @JsonKey(ignore: true)
  @override
  _$PublicMetricsCopyWith<_PublicMetrics> get copyWith =>
      __$PublicMetricsCopyWithImpl<_PublicMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicMetricsToJson(this);
  }
}

abstract class _PublicMetrics implements PublicMetrics {
  const factory _PublicMetrics(
      {required final int retweetCount,
      required final int replyCount,
      required final int likeCount,
      required final int quoteCount}) = _$_PublicMetrics;

  factory _PublicMetrics.fromJson(Map<String, dynamic> json) =
      _$_PublicMetrics.fromJson;

  @override
  int get retweetCount => throw _privateConstructorUsedError;
  @override
  int get replyCount => throw _privateConstructorUsedError;
  @override
  int get likeCount => throw _privateConstructorUsedError;
  @override
  int get quoteCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PublicMetricsCopyWith<_PublicMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
