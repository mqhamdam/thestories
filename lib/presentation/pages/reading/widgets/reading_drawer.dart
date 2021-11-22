import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/pages/reading/widgets/drawer_story_list_item.dart';

class ReadingDrawer extends StatelessWidget {
  const ReadingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const Text(
                'Stories',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              centerTitle: false,
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/fi-rr-settings.svg',
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Divider(),
                  ExpansionTile(
                    title: const Text('Series'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-film.svg',
                      color: Colors.lightGreen,
                    ),
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: [
                        for (var i = 0; i < 50; i++) const DrawerStoryListItem()
                      ],
                    ).toList(),
                  ),
                  const Divider(),
                  ExpansionTile(
                    title: const Text('Bookmarks'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-bookmark.svg',
                      color: Colors.green,
                    ),
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: [
                        for (var i = 0; i < 50; i++) const DrawerStoryListItem()
                      ],
                    ).toList(),
                  ),
                  const Divider(),
                  ExpansionTile(
                    title: const Text('History'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-time-forward.svg',
                      color: Colors.orange,
                    ),
                    maintainState: true,
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: [
                        for (var i = 0; i < 50; i++) const DrawerStoryListItem()
                      ],
                    ).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
