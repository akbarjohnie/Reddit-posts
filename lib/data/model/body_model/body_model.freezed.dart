// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditBody _$RedditBodyFromJson(Map<String, dynamic> json) {
  return _RedditBody.fromJson(json);
}

/// @nodoc
mixin _$RedditBody {
  String? get after => throw _privateConstructorUsedError;
  int? get dist => throw _privateConstructorUsedError;
  String? get modhash => throw _privateConstructorUsedError;
  String? get geo_filter => throw _privateConstructorUsedError;
  List<RedditChildren>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditBodyCopyWith<RedditBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditBodyCopyWith<$Res> {
  factory $RedditBodyCopyWith(
          RedditBody value, $Res Function(RedditBody) then) =
      _$RedditBodyCopyWithImpl<$Res, RedditBody>;
  @useResult
  $Res call(
      {String? after,
      int? dist,
      String? modhash,
      String? geo_filter,
      List<RedditChildren>? children});
}

/// @nodoc
class _$RedditBodyCopyWithImpl<$Res, $Val extends RedditBody>
    implements $RedditBodyCopyWith<$Res> {
  _$RedditBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? dist = freezed,
    Object? modhash = freezed,
    Object? geo_filter = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      dist: freezed == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as int?,
      modhash: freezed == modhash
          ? _value.modhash
          : modhash // ignore: cast_nullable_to_non_nullable
              as String?,
      geo_filter: freezed == geo_filter
          ? _value.geo_filter
          : geo_filter // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RedditChildren>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedditBodyCopyWith<$Res>
    implements $RedditBodyCopyWith<$Res> {
  factory _$$_RedditBodyCopyWith(
          _$_RedditBody value, $Res Function(_$_RedditBody) then) =
      __$$_RedditBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? after,
      int? dist,
      String? modhash,
      String? geo_filter,
      List<RedditChildren>? children});
}

/// @nodoc
class __$$_RedditBodyCopyWithImpl<$Res>
    extends _$RedditBodyCopyWithImpl<$Res, _$_RedditBody>
    implements _$$_RedditBodyCopyWith<$Res> {
  __$$_RedditBodyCopyWithImpl(
      _$_RedditBody _value, $Res Function(_$_RedditBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? dist = freezed,
    Object? modhash = freezed,
    Object? geo_filter = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_RedditBody(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      dist: freezed == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as int?,
      modhash: freezed == modhash
          ? _value.modhash
          : modhash // ignore: cast_nullable_to_non_nullable
              as String?,
      geo_filter: freezed == geo_filter
          ? _value.geo_filter
          : geo_filter // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RedditChildren>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditBody implements _RedditBody {
  const _$_RedditBody(
      {this.after,
      this.dist,
      this.modhash,
      this.geo_filter,
      final List<RedditChildren>? children})
      : _children = children;

  factory _$_RedditBody.fromJson(Map<String, dynamic> json) =>
      _$$_RedditBodyFromJson(json);

  @override
  final String? after;
  @override
  final int? dist;
  @override
  final String? modhash;
  @override
  final String? geo_filter;
  final List<RedditChildren>? _children;
  @override
  List<RedditChildren>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RedditBody(after: $after, dist: $dist, modhash: $modhash, geo_filter: $geo_filter, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedditBody &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.dist, dist) || other.dist == dist) &&
            (identical(other.modhash, modhash) || other.modhash == modhash) &&
            (identical(other.geo_filter, geo_filter) ||
                other.geo_filter == geo_filter) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, after, dist, modhash, geo_filter,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedditBodyCopyWith<_$_RedditBody> get copyWith =>
      __$$_RedditBodyCopyWithImpl<_$_RedditBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditBodyToJson(
      this,
    );
  }
}

abstract class _RedditBody implements RedditBody {
  const factory _RedditBody(
      {final String? after,
      final int? dist,
      final String? modhash,
      final String? geo_filter,
      final List<RedditChildren>? children}) = _$_RedditBody;

  factory _RedditBody.fromJson(Map<String, dynamic> json) =
      _$_RedditBody.fromJson;

  @override
  String? get after;
  @override
  int? get dist;
  @override
  String? get modhash;
  @override
  String? get geo_filter;
  @override
  List<RedditChildren>? get children;
  @override
  @JsonKey(ignore: true)
  _$$_RedditBodyCopyWith<_$_RedditBody> get copyWith =>
      throw _privateConstructorUsedError;
}
