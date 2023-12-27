// отображение всех постов списком
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/children_model/children_model.dart';
import 'package:reddit_posts/screens/new_posts_screen/widgets/post_widget.dart';

@RoutePage()
class PostListWidgetPage extends StatelessWidget {
  const PostListWidgetPage({
    super.key,
    required this.model,
  });

  final List<RedditChildren>? model;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return PostWidgetPage(
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
