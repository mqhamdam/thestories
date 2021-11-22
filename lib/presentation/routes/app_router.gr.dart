// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: require_trailing_commas

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../initial_page.dart' as _i2;
import '../pages/achievements/achievements_page.dart' as _i5;
import '../pages/authentication/authentication_page.dart' as _i1;
import '../pages/compose_story/compose_story_page.dart' as _i9;
import '../pages/infinite_stroy_list/infinite_story_list_page.dart' as _i3;
import '../pages/notifications/notifications_page.dart' as _i14;
import '../pages/profile/profile_page.dart' as _i15;
import '../pages/reading/reading_page.dart' as _i10;
import '../pages/search/global_search_page.dart' as _i13;
import '../pages/settings/settings_page.dart' as _i11;
import '../pages/settings/subpages/account_settings_page.dart' as _i6;
import '../pages/settings/subpages/bookmarks_settings_page.dart' as _i8;
import '../pages/settings/subpages/notification_settings_page.dart' as _i7;
import '../pages/special_story/special_story.dart' as _i4;
import '../pages/stories/stories_page.dart' as _i12;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AuthenticationScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthenticationScreen());
    },
    InitialScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.InitialScreen());
    },
    InfiniteStoryListScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.InfiniteStoryListScreen());
    },
    SpecialStoryScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SpecialStoryScreen());
    },
    AchievementsScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AchievementsScreen());
    },
    AccountSettingsScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountSettingsScreen());
    },
    NotificationSettingsScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.NotificationSettingsScreen());
    },
    BookmarksSettingsScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.BookmarksSettingsScreen());
    },
    ComposeStoryScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ComposeStoryScreen());
    },
    ReadingScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ReadingScreen());
    },
    SettingsScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.SettingsScreen());
    },
    StoriesScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.StoriesScreen());
    },
    GlobalSearchScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.GlobalSearchScreen());
    },
    NotificationsScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.NotificationsScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ProfileScreen());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(AuthenticationScreenRoute.name,
            path: '/authentication-screen'),
        _i16.RouteConfig(InitialScreenRoute.name, path: '/', children: [
          _i16.RouteConfig(StoriesScreenRoute.name, path: 'stories-screen'),
          _i16.RouteConfig(GlobalSearchScreenRoute.name,
              path: 'global-search-screen'),
          _i16.RouteConfig(NotificationsScreenRoute.name,
              path: 'notifications-screen'),
          _i16.RouteConfig(ProfileScreenRoute.name, path: 'profile-screen')
        ]),
        _i16.RouteConfig(InfiniteStoryListScreenRoute.name,
            path: '/infinite-story-list-screen'),
        _i16.RouteConfig(SpecialStoryScreenRoute.name,
            path: '/special-story-screen'),
        _i16.RouteConfig(AchievementsScreenRoute.name,
            path: '/achievements-screen'),
        _i16.RouteConfig(AccountSettingsScreenRoute.name,
            path: '/account-settings-screen'),
        _i16.RouteConfig(NotificationSettingsScreenRoute.name,
            path: '/notification-settings-screen'),
        _i16.RouteConfig(BookmarksSettingsScreenRoute.name,
            path: '/bookmarks-settings-screen'),
        _i16.RouteConfig(ComposeStoryScreenRoute.name,
            path: '/compose-story-screen'),
        _i16.RouteConfig(ReadingScreenRoute.name, path: '/reading-screen'),
        _i16.RouteConfig(SettingsScreenRoute.name, path: '/settings-screen')
      ];
}

/// generated route for [_i1.AuthenticationScreen]
class AuthenticationScreenRoute extends _i16.PageRouteInfo<void> {
  const AuthenticationScreenRoute()
      : super(name, path: '/authentication-screen');

  static const String name = 'AuthenticationScreenRoute';
}

/// generated route for [_i2.InitialScreen]
class InitialScreenRoute extends _i16.PageRouteInfo<void> {
  const InitialScreenRoute({List<_i16.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'InitialScreenRoute';
}

/// generated route for [_i3.InfiniteStoryListScreen]
class InfiniteStoryListScreenRoute extends _i16.PageRouteInfo<void> {
  const InfiniteStoryListScreenRoute()
      : super(name, path: '/infinite-story-list-screen');

  static const String name = 'InfiniteStoryListScreenRoute';
}

/// generated route for [_i4.SpecialStoryScreen]
class SpecialStoryScreenRoute extends _i16.PageRouteInfo<void> {
  const SpecialStoryScreenRoute() : super(name, path: '/special-story-screen');

  static const String name = 'SpecialStoryScreenRoute';
}

/// generated route for [_i5.AchievementsScreen]
class AchievementsScreenRoute extends _i16.PageRouteInfo<void> {
  const AchievementsScreenRoute() : super(name, path: '/achievements-screen');

  static const String name = 'AchievementsScreenRoute';
}

/// generated route for [_i6.AccountSettingsScreen]
class AccountSettingsScreenRoute extends _i16.PageRouteInfo<void> {
  const AccountSettingsScreenRoute()
      : super(name, path: '/account-settings-screen');

  static const String name = 'AccountSettingsScreenRoute';
}

/// generated route for [_i7.NotificationSettingsScreen]
class NotificationSettingsScreenRoute extends _i16.PageRouteInfo<void> {
  const NotificationSettingsScreenRoute()
      : super(name, path: '/notification-settings-screen');

  static const String name = 'NotificationSettingsScreenRoute';
}

/// generated route for [_i8.BookmarksSettingsScreen]
class BookmarksSettingsScreenRoute extends _i16.PageRouteInfo<void> {
  const BookmarksSettingsScreenRoute()
      : super(name, path: '/bookmarks-settings-screen');

  static const String name = 'BookmarksSettingsScreenRoute';
}

/// generated route for [_i9.ComposeStoryScreen]
class ComposeStoryScreenRoute extends _i16.PageRouteInfo<void> {
  const ComposeStoryScreenRoute() : super(name, path: '/compose-story-screen');

  static const String name = 'ComposeStoryScreenRoute';
}

/// generated route for [_i10.ReadingScreen]
class ReadingScreenRoute extends _i16.PageRouteInfo<void> {
  const ReadingScreenRoute() : super(name, path: '/reading-screen');

  static const String name = 'ReadingScreenRoute';
}

/// generated route for [_i11.SettingsScreen]
class SettingsScreenRoute extends _i16.PageRouteInfo<void> {
  const SettingsScreenRoute() : super(name, path: '/settings-screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for [_i12.StoriesScreen]
class StoriesScreenRoute extends _i16.PageRouteInfo<void> {
  const StoriesScreenRoute() : super(name, path: 'stories-screen');

  static const String name = 'StoriesScreenRoute';
}

/// generated route for [_i13.GlobalSearchScreen]
class GlobalSearchScreenRoute extends _i16.PageRouteInfo<void> {
  const GlobalSearchScreenRoute() : super(name, path: 'global-search-screen');

  static const String name = 'GlobalSearchScreenRoute';
}

/// generated route for [_i14.NotificationsScreen]
class NotificationsScreenRoute extends _i16.PageRouteInfo<void> {
  const NotificationsScreenRoute() : super(name, path: 'notifications-screen');

  static const String name = 'NotificationsScreenRoute';
}

/// generated route for [_i15.ProfileScreen]
class ProfileScreenRoute extends _i16.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(name, path: 'profile-screen');

  static const String name = 'ProfileScreenRoute';
}
