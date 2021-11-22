import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/pages/search/widgets/authors_hor_mini_preview.dart';
import 'package:thestories/presentation/pages/search/widgets/series_hor_mini_preview.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';

class GlobalSearchBody extends StatelessWidget {
  const GlobalSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight + 40),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              const [
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
                              'Global Stories',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
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
                        onPressed: () {},
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
    );
  }
}
