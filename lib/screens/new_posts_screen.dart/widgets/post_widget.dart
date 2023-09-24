// каждый отдельный элемент из списка постов
import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/post_model/post_model.dart';
import 'package:reddit_posts/screens/selected_post_screen.dart';
import 'package:reddit_posts/style/text_style.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
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
          Navigator.push(
            context,
            MaterialPageRoute(
              // передача необходимых данных в виджет поста
              builder: (context) => SelectedPost(
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
