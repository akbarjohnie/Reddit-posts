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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts from Reddit'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Post>>(
        future: repo.getData(),
        builder: (context, snapshot) {
          print(snapshot);
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
    print(posts);
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return PostWidget(
          post: posts?[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1,
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
    return ListTile(
      onTap: () {},
      title: Column(
        children: [
          Text(
            '${post?.title}',
            style: pview,
          ),
        ],
      ),
    );
  }
}
