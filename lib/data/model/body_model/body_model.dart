import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_posts/data/model/children_model/children_model.dart';

part 'body_model.freezed.dart';
part 'body_model.g.dart';

@freezed
abstract class RedditBody with _$RedditBody {
  const factory RedditBody({
    String? after,
    int? dist,
    String? modhash,
    String? geo_filter,
    List<RedditChildren>? children,
  }) = _RedditBody;

  factory RedditBody.fromJson(Map<String, dynamic> json) =>
      _$RedditBodyFromJson(json);
}
