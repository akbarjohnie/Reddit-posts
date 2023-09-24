// отображение всех постов списком
import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/children_model/children_model.dart';
import 'package:reddit_posts/screens/new_posts_screen.dart/widgets/post_widget.dart';

class PostList extends StatelessWidget {
  const PostList({
    super.key,
    required this.model,
  });
  final List<RedditChildren>? model;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return PostWidget(
          post: model?[index].data,
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
