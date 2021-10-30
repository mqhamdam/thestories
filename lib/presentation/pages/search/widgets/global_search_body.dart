import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:thestories/presentation/pages/search/widgets/authors_hor_mini_preview.dart';
import 'package:thestories/presentation/pages/search/widgets/series_hor_mini_preview.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';

class GlobalSearchBody extends StatelessWidget {
  const GlobalSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: kToolbarHeight + 40),
        child: CustomScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SeriesHorMiniPreview(),
                  AuthorsHorizontalMiniPreview(),
                  Divider(),
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
                                "Global Stories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
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
