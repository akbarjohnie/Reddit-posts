import 'package:flutter/material.dart';
import 'package:reddit_posts/style/text_style.dart';

class SelectedPost extends StatelessWidget {
  const SelectedPost({
    Key? key,
    required this.title,
    required this.selfText,
    required this.ups,
  }) : super(key: key);

  final title;
  final selfText;
  final ups;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$title',
                style: postTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$selfText',
                  style: postText,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'ups: $ups',
                style: postUps,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
