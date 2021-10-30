import 'package:auto_route/annotations.dart';
import 'package:thestories/presentation/initial_page.dart';
import 'package:thestories/presentation/pages/authentication/authentication_page.dart';
import 'package:thestories/presentation/pages/compose_story/compose_story_page.dart';
import 'package:thestories/presentation/pages/notifications/notifications_page.dart';
import 'package:thestories/presentation/pages/profile/profile_page.dart';
import 'package:thestories/presentation/pages/reading/reading_page.dart';
import 'package:thestories/presentation/pages/search/global_search_page.dart';
import 'package:thestories/presentation/pages/settings/settings_page.dart';
import 'package:thestories/presentation/pages/stories/stories_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: AuthenticationScreen,
    ),
    AutoRoute(
      page: InitialScreen,
      //  initial: true,
      children: [
        AutoRoute(page: GlobalSearchScreen),
        AutoRoute(page: NotificationsScreen),
        AutoRoute(page: ProfileScreen),
        AutoRoute(page: StoriesScreen),
      ],
    ),
    AutoRoute(
      page: ComposeStoryScreen,
    ),
    AutoRoute(
      page: ReadingScreen,
    ),
    AutoRoute(
      page: SettingsScreen,
    ),
  ],
)
class $AppRouter {}
