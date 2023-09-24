import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_posts/data/model/body_model/body_model.dart';

part 'reddit_json_model.freezed.dart';
part 'reddit_json_model.g.dart';

@freezed
abstract class RedditJson with _$RedditJson {
  const factory RedditJson({
    String? kind,
    RedditBody? data,
  }) = _RedditJson;

  factory RedditJson.fromJson(Map<String, dynamic> json) =>
      _$RedditJsonFromJson(json);
}
