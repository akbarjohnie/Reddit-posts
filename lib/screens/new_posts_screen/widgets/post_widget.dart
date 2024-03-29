// каждый отдельный элемент из списка постов
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/post_model/post_model.dart';
import 'package:reddit_posts/constants/style/text_style.dart';
import 'package:reddit_posts/screens/selected_post_screen/selected_post_screen.dart';

@RoutePage()
class PostWidgetPage extends StatelessWidget {
  const PostWidgetPage({
    super.key,
    required this.post,
  });

  final RedditPostDataModel? post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        // leading: const Icon(Icons.reddit_outlined),
        onTap: () {
          //TODO: fix routing issue

          // context.router.push(
          //   SelectedPostRoute(
          //     title: post!.title,
          //     selfText: post!.selftext,
          //     ups: post!.ups,
          //   ),
          // );
          Navigator.push(
            context,
            CupertinoPageRoute(
              // передача необходимых данных в виджет поста
              builder: (context) => SelectedPostPage(
                title: post!.title,
                selfText: post!.selftext,
                ups: post!.ups,
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
                  errorBuilder: (_, __, ___) {
                    return const SizedBox.shrink();
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
