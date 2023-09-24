import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_posts/data/model/post_model/post_model.dart';

part 'children_model.freezed.dart';
part 'children_model.g.dart';

@freezed
abstract class RedditChildren with _$RedditChildren {
  const factory RedditChildren({
    String? kind,
    RedditPostDataModel? data,
  }) = _RedditChildren;

  factory RedditChildren.fromJson(Map<String, dynamic> json) =>
      _$RedditChildrenFromJson(json);
}
