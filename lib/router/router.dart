import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample_reso/home_page.dart';
import 'package:auto_route_sample_reso/posts/posts_page.dart';
import 'package:auto_route_sample_reso/posts/single_post_page.dart';
import 'package:auto_route_sample_reso/settings/settings_page.dart';
import 'package:auto_route_sample_reso/users/user_profile_page.dart';
import 'package:auto_route_sample_reso/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PostsPage,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostPage,
            )
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'usersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UsersPage,
            ),
            AutoRoute(
              path: ':id',
              page: UserProfilePage,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostPage,
            )
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'settingsRouter',
          page: SettingsPage,
        ),
      ],
    )
  ],
)
class $AppRouter {}
