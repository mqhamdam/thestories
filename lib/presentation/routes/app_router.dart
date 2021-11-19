import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:thestories/presentation/initial_page.dart';
import 'package:thestories/presentation/pages/achievements/achievements_page.dart';
import 'package:thestories/presentation/pages/authentication/authentication_page.dart';
import 'package:thestories/presentation/pages/compose_story/compose_story_page.dart';
import 'package:thestories/presentation/pages/infinite_stroy_list/infinite_story_list_page.dart';
import 'package:thestories/presentation/pages/notifications/notifications_page.dart';
import 'package:thestories/presentation/pages/profile/profile_page.dart';
import 'package:thestories/presentation/pages/reading/reading_page.dart';
import 'package:thestories/presentation/pages/search/global_search_page.dart';
import 'package:thestories/presentation/pages/settings/settings_page.dart';
import 'package:thestories/presentation/pages/settings/subpages/account_settings_page.dart';
import 'package:thestories/presentation/pages/settings/subpages/bookmarks_settings_page.dart';
import 'package:thestories/presentation/pages/settings/subpages/notification_settings_page.dart';
import 'package:thestories/presentation/pages/special_story/special_story.dart';
import 'package:thestories/presentation/pages/stories/stories_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      // initial: true,
      page: AuthenticationScreen,
    ),
    AutoRoute(
      //initial: true,
      path: '/',
      page: InitialScreen,
      initial: true,
      children: [
        AutoRoute(
          page: StoriesScreen,
        ),
        AutoRoute(
          page: GlobalSearchScreen,
        ),
        AutoRoute(page: NotificationsScreen),
        AutoRoute(
          page: ProfileScreen,
        ),
      ],
    ),
    AutoRoute(
      page: InfiniteStoryListScreen,
    ),
    AutoRoute(
      page: SpecialStoryScreen,
    ),
    AutoRoute(
      page: AchievementsScreen,
    ),
    AutoRoute(
      page: AccountSettingsScreen,
    ),
    AutoRoute(
      page: NotificationSettingsScreen,
    ),
    AutoRoute(page: BookmarksSettingsScreen),
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
