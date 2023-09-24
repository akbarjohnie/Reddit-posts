import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
import 'package:reddit_posts/data/api/new_posts_flutter_dev_api.dart';

class AppDependenciesWidget extends StatelessWidget {
  const AppDependenciesWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Dio()
            ..options.baseUrl = 'https://www.reddit.com/'
            ..options.contentType = 'application/json'
            ..interceptors.add(PrettyDioLogger()),
        ),
        Provider(
          create: (context) => NewFlutterPostsApi(
            context.read(),
          ),
        )
      ],
      child: child,
    );
  }
}
