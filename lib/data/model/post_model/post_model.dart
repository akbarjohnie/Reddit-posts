import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class RedditPostDataModel with _$RedditPostDataModel {
  const factory RedditPostDataModel({
    String? selftext,
    String? authorName,
    String? title,
    int? ups,
    int? downs,
    String? thumbnail,
  }) = _RedditPostDataModel;

  factory RedditPostDataModel.fromJson(Map<String, dynamic> json) =>
      _$RedditPostDataModelFromJson(json);
}
