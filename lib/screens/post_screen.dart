import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/model.dart';
import 'package:reddit_posts/data/repository/reddit_repository.dart';
import 'package:reddit_posts/screens/selected_post_screen.dart';
import 'package:reddit_posts/style/text_style.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  RedditDataRepository repository = RedditDataRepository();

  // обновление данных
  Future<void> _onRefresh() async {
    await Future(
      () {
        repository.getData();
        setState(
          () {},
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
        child: FutureBuilder<List<PostModel>>(
          future: repository.getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return _PostList(
                  model: snapshot.data,
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

// отображение всех постов списком
class _PostList extends StatelessWidget {
  const _PostList({
    required this.model,
  });
  final List<PostModel>? model;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return _PostWidget(
          post: model?[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 2,
          color: Colors.transparent,
        );
      },
    );
  }
}

// каждый отдельный элемент из списка постов
class _PostWidget extends StatelessWidget {
  const _PostWidget({
    required this.post,
  });
  final PostModel? post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        // leading: const Icon(Icons.reddit_outlined),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              // передача необходимых данных в виджет поста
              builder: (context) => SelectedPost(
                title: post!.title,
                selfText: post!.selftext,
                ups: post!.ups,
                url: post?.url,
              ),
            ),
          );
        },
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(15),
            // color: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Text(
                  '${post!.title}',
                  style: pview,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Image.network(
                  '${post!.thumbnail}',
                  // чтобы в случае отсутствия изображения
                  // на экране пользователя не отображалась ошибка
                  errorBuilder: (BuildContext? context, Object? exception,
                      StackTrace? stackTrace) {
                    return const Divider(
                      height: 0,
                      color: Colors.transparent,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
