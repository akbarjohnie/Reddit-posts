import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_posts/data/api/new_posts_flutter_dev_api.dart';
import 'package:reddit_posts/data/model/json_model/reddit_json_model.dart';
import 'package:reddit_posts/screens/new_posts_screen.dart/widgets/posts_list_widget.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  NewFlutterPostsApi get api => context.read();

  Future<RedditJson> getData() {
    try {
      var data = api.getPosts();
      return data;
    } catch (e, stackTrace) {
      debugPrint(e.toString());
      debugPrint(stackTrace.toString());

      // TODO: переделать
      rethrow;
    }
  }

  // обновление данных
  Future<void> _onRefresh() async {
    await Future(
      () {
        setState(
          () {
            getData();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Posts from Reddit',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
          ),
          splashRadius: 20,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return _onRefresh();
        },
        child: FutureBuilder<RedditJson>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return PostList(
                  model: snapshot.data!.data!.children,
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                return const Center(
                  child: Text('Something went wrong...'),
                );
            }
          },
        ),
      ),
    );
  }
}
