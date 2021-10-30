// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../initial_page.dart' as _i2;
import '../pages/authentication/authentication_page.dart' as _i1;
import '../pages/compose_story/compose_story_page.dart' as _i3;
import '../pages/notifications/notifications_page.dart' as _i7;
import '../pages/profile/profile_page.dart' as _i8;
import '../pages/reading/reading_page.dart' as _i4;
import '../pages/search/global_search_page.dart' as _i6;
import '../pages/settings/settings_page.dart' as _i5;
import '../pages/stories/stories_page.dart' as _i9;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AuthenticationScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthenticationScreen());
    },
    InitialScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.InitialScreen());
    },
    ComposeStoryScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ComposeStoryScreen());
    },
    ReadingScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ReadingScreen());
    },
    SettingsScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsScreen());
    },
    GlobalSearchScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.GlobalSearchScreen());
    },
    NotificationsScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.NotificationsScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfileScreen());
    },
    StoriesScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.StoriesScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(AuthenticationScreenRoute.name, path: '/'),
        _i10.RouteConfig(InitialScreenRoute.name,
            path: '/initial-screen',
            children: [
              _i10.RouteConfig(GlobalSearchScreenRoute.name,
                  path: 'global-search-screen'),
              _i10.RouteConfig(NotificationsScreenRoute.name,
                  path: 'notifications-screen'),
              _i10.RouteConfig(ProfileScreenRoute.name, path: 'profile-screen'),
              _i10.RouteConfig(StoriesScreenRoute.name, path: 'stories-screen')
            ]),
        _i10.RouteConfig(ComposeStoryScreenRoute.name,
            path: '/compose-story-screen'),
        _i10.RouteConfig(ReadingScreenRoute.name, path: '/reading-screen'),
        _i10.RouteConfig(SettingsScreenRoute.name, path: '/settings-screen')
      ];
}

/// generated route for [_i1.AuthenticationScreen]
class AuthenticationScreenRoute extends _i10.PageRouteInfo<void> {
  const AuthenticationScreenRoute() : super(name, path: '/');

  static const String name = 'AuthenticationScreenRoute';
}

/// generated route for [_i2.InitialScreen]
class InitialScreenRoute extends _i10.PageRouteInfo<void> {
  const InitialScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(name, path: '/initial-screen', initialChildren: children);

  static const String name = 'InitialScreenRoute';
}

/// generated route for [_i3.ComposeStoryScreen]
class ComposeStoryScreenRoute extends _i10.PageRouteInfo<void> {
  const ComposeStoryScreenRoute() : super(name, path: '/compose-story-screen');

  static const String name = 'ComposeStoryScreenRoute';
}

/// generated route for [_i4.ReadingScreen]
class ReadingScreenRoute extends _i10.PageRouteInfo<void> {
  const ReadingScreenRoute() : super(name, path: '/reading-screen');

  static const String name = 'ReadingScreenRoute';
}

/// generated route for [_i5.SettingsScreen]
class SettingsScreenRoute extends _i10.PageRouteInfo<void> {
  const SettingsScreenRoute() : super(name, path: '/settings-screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for [_i6.GlobalSearchScreen]
class GlobalSearchScreenRoute extends _i10.PageRouteInfo<void> {
  const GlobalSearchScreenRoute() : super(name, path: 'global-search-screen');

  static const String name = 'GlobalSearchScreenRoute';
}

/// generated route for [_i7.NotificationsScreen]
class NotificationsScreenRoute extends _i10.PageRouteInfo<void> {
  const NotificationsScreenRoute() : super(name, path: 'notifications-screen');

  static const String name = 'NotificationsScreenRoute';
}

/// generated route for [_i8.ProfileScreen]
class ProfileScreenRoute extends _i10.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(name, path: 'profile-screen');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for [_i9.StoriesScreen]
class StoriesScreenRoute extends _i10.PageRouteInfo<void> {
  const StoriesScreenRoute() : super(name, path: 'stories-screen');

  static const String name = 'StoriesScreenRoute';
}
