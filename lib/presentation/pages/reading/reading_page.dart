import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';
import 'package:thestories/presentation/pages/profile/profile_page.dart';
import 'package:thestories/presentation/pages/reading/widgets/reading_body.dart';
import 'package:thestories/presentation/pages/reading/widgets/reading_drawer.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({Key? key}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatedDrawerIcon;
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
  @override
  void initState() {
    _animatedDrawerIcon = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animatedDrawerIcon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      onDragUpdate: (dvalue, dir) {
        _animatedDrawerIcon.animateTo(dvalue);
      },
      innerDrawerCallback: (isOpen) {
        // if (isOpen) {
        //   _animatedDrawerIcon.forward();
        // } else {
        //   _animatedDrawerIcon.reverse();
        // }
      },
      key: _innerDrawerKey,
      swipeChild: true,
      rightAnimationType: InnerDrawerAnimation.quadratic,
      rightChild: ReadingDrawer(),
      scaffold: Scaffold(
        appBar: AppBar(
          leading: CustomBackButton(),
          title: GestureDetector(
            onTap: () {
              AutoRouter.innerRouterOf(context, StoriesScreenRoute.name)!
                  .push(ProfileScreenRoute());
            },
            child: Row(
              children: [
                CustomAvatar(imgUrl: avatar_url_template, radius: 23),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This is user name",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@this is user id",
                        style: TextStyle(fontSize: 10, color: Colors.black
                            // fontWeight: FontWeight.w200,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/fi-rr-bookmark.svg",
                  color: Colors.green),
            ),
            IconButton(
                onPressed: () {
                  _innerDrawerKey.currentState?.toggle();
                },
                icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    color: Colors.black,
                    progress: _animatedDrawerIcon)),
          ],
        ),
        body: ReadingBody(),
        bottomSheet: Material(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(33))),
          child: Padding(
            padding: const EdgeInsets.only(
                top: kToolbarHeight / 6,
                bottom: kToolbarHeight / 6,
                right: 10,
                left: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/fi-rr-thumbs-up.svg"),
                ),
                Text("230"),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/fi-rr-thumbs-down.svg"),
                ),
                Text("230"),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/fi-rr-comments.svg"),
                ),
                Text("230"),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/fi-rr-menu-dots.svg"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
