// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditPostDataModel _$RedditPostDataModelFromJson(Map<String, dynamic> json) {
  return _RedditPostDataModel.fromJson(json);
}

/// @nodoc
mixin _$RedditPostDataModel {
  String? get selftext => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get ups => throw _privateConstructorUsedError;
  int? get downs => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditPostDataModelCopyWith<RedditPostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditPostDataModelCopyWith<$Res> {
  factory $RedditPostDataModelCopyWith(
          RedditPostDataModel value, $Res Function(RedditPostDataModel) then) =
      _$RedditPostDataModelCopyWithImpl<$Res, RedditPostDataModel>;
  @useResult
  $Res call(
      {String? selftext,
      String? authorName,
      String? title,
      int? ups,
      int? downs,
      String? thumbnail});
}

/// @nodoc
class _$RedditPostDataModelCopyWithImpl<$Res, $Val extends RedditPostDataModel>
    implements $RedditPostDataModelCopyWith<$Res> {
  _$RedditPostDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selftext = freezed,
    Object? authorName = freezed,
    Object? title = freezed,
    Object? ups = freezed,
    Object? downs = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: freezed == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ups: freezed == ups
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int?,
      downs: freezed == downs
          ? _value.downs
          : downs // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedditPostDataModelCopyWith<$Res>
    implements $RedditPostDataModelCopyWith<$Res> {
  factory _$$_RedditPostDataModelCopyWith(_$_RedditPostDataModel value,
          $Res Function(_$_RedditPostDataModel) then) =
      __$$_RedditPostDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? selftext,
      String? authorName,
      String? title,
      int? ups,
      int? downs,
      String? thumbnail});
}

/// @nodoc
class __$$_RedditPostDataModelCopyWithImpl<$Res>
    extends _$RedditPostDataModelCopyWithImpl<$Res, _$_RedditPostDataModel>
    implements _$$_RedditPostDataModelCopyWith<$Res> {
  __$$_RedditPostDataModelCopyWithImpl(_$_RedditPostDataModel _value,
      $Res Function(_$_RedditPostDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selftext = freezed,
    Object? authorName = freezed,
    Object? title = freezed,
    Object? ups = freezed,
    Object? downs = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_RedditPostDataModel(
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: freezed == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ups: freezed == ups
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int?,
      downs: freezed == downs
          ? _value.downs
          : downs // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditPostDataModel implements _RedditPostDataModel {
  const _$_RedditPostDataModel(
      {this.selftext,
      this.authorName,
      this.title,
      this.ups,
      this.downs,
      this.thumbnail});

  factory _$_RedditPostDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RedditPostDataModelFromJson(json);

  @override
  final String? selftext;
  @override
  final String? authorName;
  @override
  final String? title;
  @override
  final int? ups;
  @override
  final int? downs;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'RedditPostDataModel(selftext: $selftext, authorName: $authorName, title: $title, ups: $ups, downs: $downs, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedditPostDataModel &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ups, ups) || other.ups == ups) &&
            (identical(other.downs, downs) || other.downs == downs) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, selftext, authorName, title, ups, downs, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedditPostDataModelCopyWith<_$_RedditPostDataModel> get copyWith =>
      __$$_RedditPostDataModelCopyWithImpl<_$_RedditPostDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditPostDataModelToJson(
      this,
    );
  }
}

abstract class _RedditPostDataModel implements RedditPostDataModel {
  const factory _RedditPostDataModel(
      {final String? selftext,
      final String? authorName,
      final String? title,
      final int? ups,
      final int? downs,
      final String? thumbnail}) = _$_RedditPostDataModel;

  factory _RedditPostDataModel.fromJson(Map<String, dynamic> json) =
      _$_RedditPostDataModel.fromJson;

  @override
  String? get selftext;
  @override
  String? get authorName;
  @override
  String? get title;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_RedditPostDataModelCopyWith<_$_RedditPostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
