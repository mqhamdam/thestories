import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/pages/stories/widgets/special_group_preview.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        displacement: 120.0,
        onRefresh: () async {},
        child: CustomScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33)),
              ),
              floating: true,
              backgroundColor: Colors.white,
              title: Text("The Stories",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "IMFellEnglish",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 3,
                  )),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 90,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Column(
                            children: [
                              CustomAvatar(
                                  imgUrl: avatar_url_template, radius: 30),
                              Text("username")
                            ],
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // show 10 last public stories
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/fi-rr-world.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Public Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  InfiniteStoryListScreenRoute().show(context);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/fi-rr-angle-right.svg"),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        for (int i = 0; i < 10; i++) StoryMiniPreview(),
                        Divider(),
                        TextButton(
                          onPressed: () {
                            InfiniteStoryListScreenRoute().show(context);
                          },
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // show 10 last public stories
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/fi-rr-shield.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Private Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  InfiniteStoryListScreenRoute().show(context);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/fi-rr-angle-right.svg"),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        for (int i = 0; i < 10; i++) StoryMiniPreview(),
                        Divider(),
                        TextButton(
                          onPressed: () {
                            InfiniteStoryListScreenRoute().show(context);
                          },
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // show 10 last public stories
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/fi-rr-star.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Special Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  SpecialStoryScreenRoute().show(context);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/fi-rr-angle-right.svg"),
                              ),
                            ],
                          ),
                        ),
                        for (int i = 0; i < 10; i++) SpecialGroupMiniPreview(),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
