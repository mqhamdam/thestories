import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/pages/infinite_stroy_list/infinite_story_list_page.dart';
import 'package:thestories/presentation/pages/special_story/special_story.dart';
import 'package:thestories/presentation/pages/stories/widgets/special_group_preview.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        displacement: 120.0,
        onRefresh: () async {},
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            const SliverAppBar(
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(33),
                  bottomRight: Radius.circular(33),
                ),
              ),
              floating: true,
              backgroundColor: Colors.white,
              title: Text(
                'The Stories',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'IMFellEnglish',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 3,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Column(
                            children: const [
                              CustomAvatar(imgUrl: avatarURLTemp, radius: 30),
                              Text('username')
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
                  // show 10 new public stories
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/fi-rr-world.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Public Stories',
                                style: TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  pushNewScreen(
                                    context,
                                    screen: const InfiniteStoryListScreen(),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/icons/fi-rr-angle-right.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        for (int i = 0; i < 10; i++) const StoryMiniPreview(),
                        const Divider(),
                        TextButton(
                          onPressed: () {
                            pushNewScreen(
                              context,
                              screen: const InfiniteStoryListScreen(),
                            );
                          },
                          child: const Text('See all'),
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
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/fi-rr-shield.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Private Stories',
                                style: TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  pushNewScreen(
                                    context,
                                    screen: const InfiniteStoryListScreen(),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/icons/fi-rr-angle-right.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        for (int i = 0; i < 10; i++) const StoryMiniPreview(),
                        const Divider(),
                        TextButton(
                          onPressed: () {
                            pushNewScreen(
                              context,
                              screen: const InfiniteStoryListScreen(),
                            );
                          },
                          child: const Text('See all'),
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
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/fi-rr-star.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Special Stories',
                                style: TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  pushNewScreen(
                                    context,
                                    screen: const SpecialStoryScreen(),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/icons/fi-rr-angle-right.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                        for (int i = 0; i < 10; i++)
                          const SpecialGroupMiniPreview(),
                        const Divider(),
                        TextButton(
                          onPressed: () {
                            pushNewScreen(
                              context,
                              screen: const SpecialStoryScreen(),
                            );
                          },
                          child: const Text('See all'),
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
