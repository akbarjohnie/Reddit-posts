// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditPostDataModel _$$_RedditPostDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_RedditPostDataModel(
      selftext: json['selftext'] as String?,
      authorName: json['authorName'] as String?,
      title: json['title'] as String?,
      ups: json['ups'] as int?,
      downs: json['downs'] as int?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_RedditPostDataModelToJson(
        _$_RedditPostDataModel instance) =>
    <String, dynamic>{
      'selftext': instance.selftext,
      'authorName': instance.authorName,
      'title': instance.title,
      'ups': instance.ups,
      'downs': instance.downs,
      'thumbnail': instance.thumbnail,
    };
