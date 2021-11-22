import 'package:flutter/material.dart';
import 'package:thestories/presentation/initial_page.dart';
import 'package:thestories/presentation/pages/achievements/achievements_page.dart';
import 'package:thestories/presentation/pages/compose_story/compose_story_page.dart';
import 'package:thestories/presentation/pages/infinite_stroy_list/infinite_story_list_page.dart';
import 'package:thestories/presentation/pages/profile/profile_page.dart';
import 'package:thestories/presentation/pages/profile/widgets/story_single_preview.dart';
import 'package:thestories/presentation/pages/reading/reading_page.dart';
import 'package:thestories/presentation/pages/settings/settings_page.dart';
import 'package:thestories/presentation/pages/settings/subpages/account_settings_page.dart';
import 'package:thestories/presentation/pages/settings/subpages/bookmarks_settings_page.dart';
import 'package:thestories/presentation/pages/settings/subpages/notification_settings_page.dart';
import 'package:thestories/presentation/pages/special_story/special_story.dart';
import 'package:thestories/presentation/routes/route_names.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const InitialScreen(),
        );

      case profileRoute:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case specialStoriesRoute:
        return MaterialPageRoute(
          builder: (_) => const SpecialStoryScreen(),
        );
      case listOfStoriesRoute:
        return MaterialPageRoute(
          builder: (_) => const InfiniteStoryListScreen(),
        );
      case readingStoryRoute:
        return MaterialPageRoute(
          builder: (_) => const ReadingScreen(),
        );
      case composeStoryRoute:
        return MaterialPageRoute(
          builder: (_) => const ComposeStoryScreen(),
        );
      case settingsRoute:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      case accountSettings:
        return MaterialPageRoute(
          builder: (_) => const AccountSettingsScreen(),
        );
      case bookmarkSettings:
        return MaterialPageRoute(
          builder: (_) => const BookmarksSettingsScreen(),
        );
      case notificationSettings:
        return MaterialPageRoute(
          builder: (_) => const NotificationSettingsScreen(),
        );
      case achievementsRoute:
        return MaterialPageRoute(
          builder: (_) => const AchievementsScreen(),
        );
      case storageSettings:
      //  return MaterialPageRoute(builder: (_)=>const Storag)
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}
