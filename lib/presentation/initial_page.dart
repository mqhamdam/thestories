import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thestories/presentation/custom_widgets/animated_fab_menu.dart';
import 'package:thestories/presentation/pages/compose_story/compose_story_page.dart';
import 'package:thestories/presentation/pages/notifications/notifications_page.dart';
import 'package:thestories/presentation/pages/profile/profile_page.dart';
import 'package:thestories/presentation/pages/reading/reading_page.dart';
import 'package:thestories/presentation/pages/search/global_search_page.dart';
import 'package:thestories/presentation/pages/settings/settings_page.dart';
import 'package:thestories/presentation/pages/stories/stories_page.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [
        StoriesScreen(),
        GlobalSearchScreen(),
        NotificationsScreen(),
        ProfileScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/icons/fi-rr-home.svg',
          ),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/icons/fi-rr-search.svg',
          ),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/icons/fi-rr-bell.svg',
          ),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/icons/fi-rr-user.svg',
          ),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
      floatingActionButton: AnimatedFabMenu(
        children: [
          FloatingActionButton(
            heroTag: UniqueKey(),
            backgroundColor: Colors.white,
            mini: true,
            onPressed: () {
              pushNewScreen(
                context,
                screen: const ComposeStoryScreen(),
              );
            },
            child: SvgPicture.asset(
              'assets/icons/fi-rr-edit.svg',
            ),
          ),
          FloatingActionButton(
            heroTag: UniqueKey(),
            backgroundColor: Colors.white,
            mini: true,
            onPressed: () {
              pushNewScreen(
                context,
                screen: const ReadingScreen(),
              );
            },
            child: SvgPicture.asset(
              'assets/icons/fi-rr-book-alt.svg',
            ),
          ),
          FloatingActionButton(
            heroTag: UniqueKey(),
            backgroundColor: Colors.white,
            mini: true,
            onPressed: () {
              pushNewScreen(
                context,
                screen: const SettingsScreen(),
              );
            },
            child: SvgPicture.asset(
              'assets/icons/fi-rr-settings.svg',
            ),
          ),
        ],
      ),
    );
  }
}
