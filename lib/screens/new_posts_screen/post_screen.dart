import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_posts/data/api/new_posts_flutter_dev_api.dart';
import 'package:reddit_posts/data/model/json_model/reddit_json_model.dart';
import 'package:reddit_posts/screens/new_posts_screen/widgets/posts_list_widget.dart';

@RoutePage()
class NewPostsPage extends StatefulWidget {
  const NewPostsPage({Key? key}) : super(key: key);

  @override
  State<NewPostsPage> createState() => _NewPostsPageState();
}

class _NewPostsPageState extends State<NewPostsPage> {
  NewFlutterPostsApi get api => context.read();

  Future<RedditJson> _getData() async {
    try {
      var data = api.getPosts();
      return data;
    } catch (e, stackTrace) {
      debugPrint(e.toString());
      debugPrint(stackTrace.toString());

      // TODO: поискать информацию на счёт того, стоит ли так делать
      // await Future.delayed(const Duration(seconds: 5), () {
      //   throw getData();
      // });
    }
    // TODO: стоит ли так делать
    return const RedditJson();
  }

  // обновление данных
  Future<void> _onRefresh() async {
    await Future(
      () {
        setState(
          () {
            _getData();
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
          future: _getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return PostListWidget(
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
