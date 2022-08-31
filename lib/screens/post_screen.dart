import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/model.dart';
import 'package:reddit_posts/data/repository/reddit_repository.dart';
import 'package:reddit_posts/style/text_style.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  RedditDataRepository repo = RedditDataRepository();
  Post model = Post();

  Future<void> _onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 0),
      () {
        repo.getData();
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
        child: FutureBuilder<List<Post>>(
          future: repo.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return PostList(
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

class PostList extends StatelessWidget {
  const PostList({
    super.key,
    required this.posts,
  });
  final List<Post>? posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return PostWidget(
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

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
  });
  final Post? post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed('/selected/');
        },
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2),
          ),
          child: Column(
            children: [
              Text(
                '${post!.title}',
                style: pview,
                textAlign: TextAlign.center,
              ),
              Image.network(
                '${post!.thumbnail}',
                errorBuilder: (BuildContext? context, Object? exceprion,
                    StackTrace? stackTrace) {
                  return const Divider(
                    height: 0,
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

class SelectedPost extends StatelessWidget {
  const SelectedPost({
    Key? key,
    this.post,
  }) : super(key: key);

  final Post? post;

  @override
  Widget build(BuildContext context) {
    // print(post);
    return Scaffold(
      appBar: AppBar(
        title: Text('${post?.title}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${post?.title}'),
            const SizedBox(height: 30),
            Text('${post?.selftext}'),
            Text('${post?.ups}'),
          ],
        ),
      ),
    );
  }
}
