import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reddit_posts/screens/post_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit FlutterDev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
          ),
        ),
      ),
      home: const PostsScreen(),
    );
  }
}
