// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'children_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditChildren _$RedditChildrenFromJson(Map<String, dynamic> json) {
  return _RedditChildren.fromJson(json);
}

/// @nodoc
mixin _$RedditChildren {
  String? get kind => throw _privateConstructorUsedError;
  RedditPostDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditChildrenCopyWith<RedditChildren> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditChildrenCopyWith<$Res> {
  factory $RedditChildrenCopyWith(
          RedditChildren value, $Res Function(RedditChildren) then) =
      _$RedditChildrenCopyWithImpl<$Res, RedditChildren>;
  @useResult
  $Res call({String? kind, RedditPostDataModel? data});

  $RedditPostDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$RedditChildrenCopyWithImpl<$Res, $Val extends RedditChildren>
    implements $RedditChildrenCopyWith<$Res> {
  _$RedditChildrenCopyWithImpl(this._value, this._then);

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
              as RedditPostDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RedditPostDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RedditPostDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RedditChildrenCopyWith<$Res>
    implements $RedditChildrenCopyWith<$Res> {
  factory _$$_RedditChildrenCopyWith(
          _$_RedditChildren value, $Res Function(_$_RedditChildren) then) =
      __$$_RedditChildrenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kind, RedditPostDataModel? data});

  @override
  $RedditPostDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_RedditChildrenCopyWithImpl<$Res>
    extends _$RedditChildrenCopyWithImpl<$Res, _$_RedditChildren>
    implements _$$_RedditChildrenCopyWith<$Res> {
  __$$_RedditChildrenCopyWithImpl(
      _$_RedditChildren _value, $Res Function(_$_RedditChildren) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_RedditChildren(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RedditPostDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditChildren implements _RedditChildren {
  const _$_RedditChildren({this.kind, this.data});

  factory _$_RedditChildren.fromJson(Map<String, dynamic> json) =>
      _$$_RedditChildrenFromJson(json);

  @override
  final String? kind;
  @override
  final RedditPostDataModel? data;

  @override
  String toString() {
    return 'RedditChildren(kind: $kind, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedditChildren &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedditChildrenCopyWith<_$_RedditChildren> get copyWith =>
      __$$_RedditChildrenCopyWithImpl<_$_RedditChildren>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditChildrenToJson(
      this,
    );
  }
}

abstract class _RedditChildren implements RedditChildren {
  const factory _RedditChildren(
      {final String? kind,
      final RedditPostDataModel? data}) = _$_RedditChildren;

  factory _RedditChildren.fromJson(Map<String, dynamic> json) =
      _$_RedditChildren.fromJson;

  @override
  String? get kind;
  @override
  RedditPostDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RedditChildrenCopyWith<_$_RedditChildren> get copyWith =>
      throw _privateConstructorUsedError;
}
