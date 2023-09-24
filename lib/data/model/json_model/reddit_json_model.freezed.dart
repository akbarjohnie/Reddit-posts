// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reddit_json_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditJson _$RedditJsonFromJson(Map<String, dynamic> json) {
  return _RedditJson.fromJson(json);
}

/// @nodoc
mixin _$RedditJson {
  String? get kind => throw _privateConstructorUsedError;
  RedditBody? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditJsonCopyWith<RedditJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditJsonCopyWith<$Res> {
  factory $RedditJsonCopyWith(
          RedditJson value, $Res Function(RedditJson) then) =
      _$RedditJsonCopyWithImpl<$Res, RedditJson>;
  @useResult
  $Res call({String? kind, RedditBody? data});

  $RedditBodyCopyWith<$Res>? get data;
}

/// @nodoc
class _$RedditJsonCopyWithImpl<$Res, $Val extends RedditJson>
    implements $RedditJsonCopyWith<$Res> {
  _$RedditJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RedditBody?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RedditBodyCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RedditBodyCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RedditJsonCopyWith<$Res>
    implements $RedditJsonCopyWith<$Res> {
  factory _$$_RedditJsonCopyWith(
          _$_RedditJson value, $Res Function(_$_RedditJson) then) =
      __$$_RedditJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kind, RedditBody? data});

  @override
  $RedditBodyCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_RedditJsonCopyWithImpl<$Res>
    extends _$RedditJsonCopyWithImpl<$Res, _$_RedditJson>
    implements _$$_RedditJsonCopyWith<$Res> {
  __$$_RedditJsonCopyWithImpl(
      _$_RedditJson _value, $Res Function(_$_RedditJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_RedditJson(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RedditBody?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditJson implements _RedditJson {
  const _$_RedditJson({this.kind, this.data});

  factory _$_RedditJson.fromJson(Map<String, dynamic> json) =>
      _$$_RedditJsonFromJson(json);

  @override
  final String? kind;
  @override
  final RedditBody? data;

  @override
  String toString() {
    return 'RedditJson(kind: $kind, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedditJson &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedditJsonCopyWith<_$_RedditJson> get copyWith =>
      __$$_RedditJsonCopyWithImpl<_$_RedditJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditJsonToJson(
      this,
    );
  }
}

abstract class _RedditJson implements RedditJson {
  const factory _RedditJson({final String? kind, final RedditBody? data}) =
      _$_RedditJson;

  factory _RedditJson.fromJson(Map<String, dynamic> json) =
      _$_RedditJson.fromJson;

  @override
  String? get kind;
  @override
  RedditBody? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RedditJsonCopyWith<_$_RedditJson> get copyWith =>
      throw _privateConstructorUsedError;
}
