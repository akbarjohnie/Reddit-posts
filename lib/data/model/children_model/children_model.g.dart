// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditChildren _$$_RedditChildrenFromJson(Map<String, dynamic> json) =>
    _$_RedditChildren(
      kind: json['kind'] as String?,
      data: json['data'] == null
          ? null
          : RedditPostDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RedditChildrenToJson(_$_RedditChildren instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
