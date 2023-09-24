// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditJson _$$_RedditJsonFromJson(Map<String, dynamic> json) =>
    _$_RedditJson(
      kind: json['kind'] as String?,
      data: json['data'] == null
          ? null
          : RedditBody.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RedditJsonToJson(_$_RedditJson instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
