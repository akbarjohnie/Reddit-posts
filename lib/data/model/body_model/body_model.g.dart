// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditBody _$$_RedditBodyFromJson(Map<String, dynamic> json) =>
    _$_RedditBody(
      after: json['after'] as String?,
      dist: json['dist'] as int?,
      modhash: json['modhash'] as String?,
      geo_filter: json['geo_filter'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => RedditChildren.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RedditBodyToJson(_$_RedditBody instance) =>
    <String, dynamic>{
      'after': instance.after,
      'dist': instance.dist,
      'modhash': instance.modhash,
      'geo_filter': instance.geo_filter,
      'children': instance.children,
    };
