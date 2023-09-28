// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'navigation.dart';

abstract class _$AppNavigation extends RootStackRouter {
  // ignore: unused_element
  _$AppNavigation({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    NewPostsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewPostsPage(),
      );
    },
    PostWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<PostWidgetRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PostWidgetPage(
          key: args.key,
          post: args.post,
        ),
      );
    },
    SelectedPostRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedPostRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectedPostPage(
          key: args.key,
          title: args.title,
          selfText: args.selfText,
          ups: args.ups,
        ),
      );
    },
  };
}

/// generated route for
/// [NewPostsPage]
class NewPostsRoute extends PageRouteInfo<void> {
  const NewPostsRoute({List<PageRouteInfo>? children})
      : super(
          NewPostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPostsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PostWidgetPage]
class PostWidgetRoute extends PageRouteInfo<PostWidgetRouteArgs> {
  PostWidgetRoute({
    Key? key,
    required RedditPostDataModel? post,
    List<PageRouteInfo>? children,
  }) : super(
          PostWidgetRoute.name,
          args: PostWidgetRouteArgs(
            key: key,
            post: post,
          ),
          initialChildren: children,
        );

  static const String name = 'PostWidgetRoute';

  static const PageInfo<PostWidgetRouteArgs> page =
      PageInfo<PostWidgetRouteArgs>(name);
}

class PostWidgetRouteArgs {
  const PostWidgetRouteArgs({
    this.key,
    required this.post,
  });

  final Key? key;

  final RedditPostDataModel? post;

  @override
  String toString() {
    return 'PostWidgetRouteArgs{key: $key, post: $post}';
  }
}

/// generated route for
/// [SelectedPostPage]
class SelectedPostRoute extends PageRouteInfo<SelectedPostRouteArgs> {
  SelectedPostRoute({
    Key? key,
    required dynamic title,
    required dynamic selfText,
    required dynamic ups,
    List<PageRouteInfo>? children,
  }) : super(
          SelectedPostRoute.name,
          args: SelectedPostRouteArgs(
            key: key,
            title: title,
            selfText: selfText,
            ups: ups,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedPostRoute';

  static const PageInfo<SelectedPostRouteArgs> page =
      PageInfo<SelectedPostRouteArgs>(name);
}

class SelectedPostRouteArgs {
  const SelectedPostRouteArgs({
    this.key,
    required this.title,
    required this.selfText,
    required this.ups,
  });

  final Key? key;

  final dynamic title;

  final dynamic selfText;

  final dynamic ups;

  @override
  String toString() {
    return 'SelectedPostRouteArgs{key: $key, title: $title, selfText: $selfText, ups: $ups}';
  }
}
