import 'package:flutter/material.dart';
import 'package:reddit_posts/constants/style/theme_data.dart';
import 'package:reddit_posts/navigation/navigation.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppNavigation _router = AppNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      title: 'Reddit FlutterDev',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
