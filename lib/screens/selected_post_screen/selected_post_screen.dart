import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reddit_posts/constants/style/text_style.dart';

@RoutePage()
class SelectedPostPage extends StatelessWidget {
  const SelectedPostPage({
    Key? key,
    required this.title,
    required this.selfText,
    required this.ups,
  }) : super(key: key);

  final dynamic title;
  final dynamic selfText;
  final dynamic ups;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
          splashRadius: 20,
        ),
      ),
      body: Center(
        // не во всех постах текст может полностью отображаться
        // поэтому было необходимо добавить возможность пролистывания
        // нужно заменить SCSV
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   '$title',
              //   style: postTitle,
              //   textAlign: TextAlign.center,
              // ),
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
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
