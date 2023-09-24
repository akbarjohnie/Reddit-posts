import 'package:dio/dio.dart';
import 'package:reddit_posts/data/model/json_model/reddit_json_model.dart';
import 'package:retrofit/http.dart';

part 'new_posts_flutter_dev_api.g.dart';

@RestApi()
abstract class NewFlutterPostsApi {
  factory NewFlutterPostsApi(
    Dio dio, {
    String baseUrl,
  }) = _NewFlutterPostsApi;

  @GET('/r/flutterdev/new.json')
  Future<RedditJson> getPosts();
}
