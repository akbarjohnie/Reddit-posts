import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reddit_posts/data/model/model.dart';

class RedditDataRepository {
  Future<List<Post>> getData() async {
    final uri = Uri.parse('https://www.reddit.com/r/flutterdev/new.json');
    final response = await http.get(uri);

    final Map<String, dynamic> data = json.decode(response.body);

    // обращение к необходимому элементу массива
    final List children = data["data"]["children"];
    // обращение к данным из нужного элемента
    final List<Map<String, dynamic>> targetData = children
        .map((item) => ({
              'selftext': item['data']['selftext'],
              'ups': item['data']['ups'],
              'thumbnail': item['data']['thumbnail'],
              'title': item['data']['title']
            }))
        .toList();

    // получение данных списком
    List<Post> posts =
        targetData.map((postData) => Post.fromJson(postData)).toList();
    return posts;
  }
}
