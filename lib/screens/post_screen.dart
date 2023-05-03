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
        title: const Text('Posts from Reddit'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return _onRefresh();
        },
        child: FutureBuilder<List<PostModel>>(
          future: repository.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return _PostList(
                posts: snapshot.data,
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            } else {
              return const Scaffold(
                body: Center(
                  child: Text('Something went wrong...'),
                ),
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
    required this.posts,
  });
  final List<PostModel>? posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return _PostWidget(
          post: posts?[index],
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
      padding: const EdgeInsets.only(
        right: 10.0,
        top: 10.0,
        bottom: 10.0,
        left: 0.0,
      ),
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
            border: Border.all(width: 1, color: Colors.grey),
            // color: Colors.grey,
          ),
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
    );
  }
}
