import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reddit_posts/data/model/model.dart';

class RedditDataRepositiry {
  Future<RedditPostModel> getData() async {
    final uri = Uri.parse('https://www.reddit.com/r/flutterdev/new.json');
    final response = await http.get(uri);

    return RedditPostModel.fromJson(json.decode(response.body));
  }
}
