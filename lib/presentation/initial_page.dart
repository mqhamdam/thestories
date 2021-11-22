import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/animated_fab_menu.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [
          StoriesScreenRoute(),
          GlobalSearchScreenRoute(),
          NotificationsScreenRoute(),
          ProfileScreenRoute(),
        ],
        bottomNavigationBuilder: (_, router) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30),),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, blurRadius: 10,),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                elevation: 8,
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                currentIndex: router.activeIndex,
                onTap: router.setActiveIndex,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/fi-rr-home.svg',
                        color: router.activeIndex == 0
                            ? Colors.black
                            : Colors.black38,
                      ),
                      label: '',),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/fi-rr-search.svg',
                        color: router.activeIndex == 1
                            ? Colors.black
                            : Colors.black38,
                      ),
                      label: '',),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/fi-rr-bell.svg',
                        color: router.activeIndex == 2
                            ? Colors.black
                            : Colors.black38,
                      ),
                      label: '',),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/fi-rr-user.svg',
                        color: router.activeIndex == 3
                            ? Colors.black
                            : Colors.black38,
                      ),
                      label: '',),
                ],
              ),
            ),
          );
        },
        floatingActionButton: AnimatedFabMenu(children: [
          FloatingActionButton(
            heroTag: UniqueKey(),
            backgroundColor: Colors.white,
            mini: true,
            onPressed: () {
              AutoRouter.of(context).push(const ComposeStoryScreenRoute());
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
              AutoRouter.of(context).push(const ReadingScreenRoute());
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
              AutoRouter.of(context).push(const SettingsScreenRoute());
            },
            child: SvgPicture.asset(
              'assets/icons/fi-rr-settings.svg',
            ),
          ),
        ],),);
  }
}
// FloatingActionButton( 
//         backgroundColor: Colors.white,
//         child: SvgPicture.asset('assets/icons/fi-rr-line-width.svg'),
//         onPressed: () {},
//       ),