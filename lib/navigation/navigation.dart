import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reddit_posts/data/model/children_model/children_model.dart';
import 'package:reddit_posts/data/model/post_model/post_model.dart';
import 'package:reddit_posts/screens/new_posts_screen/post_screen.dart';
import 'package:reddit_posts/screens/new_posts_screen/widgets/post_widget.dart';
import 'package:reddit_posts/screens/new_posts_screen/widgets/posts_list_widget.dart';
import 'package:reddit_posts/screens/selected_post_screen/selected_post_screen.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppNavigation extends _$AppNavigation {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: NewPostsRoute.page,
          children: [
            AutoRoute(
              path: 'post-list-widget',
              page: PostListWidgetRoute.page,
              children: [
                AutoRoute(
                  path: 'post-widget',
                  page: PostWidgetRoute.page,
                  children: [
                    AutoRoute(
                      path: 'selected-post',
                      page: SelectedPostRoute.page,
                    )
                  ],
                )
              ],
            ),
          ],
        )
      ];
}
