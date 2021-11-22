import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class DrawerStoryListItem extends StatelessWidget {
  const DrawerStoryListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Story Header'),
      subtitle: const Text(
        'Story  body(max2 line) $storyBodyTemp',
        maxLines: 3,
      ),
      isThreeLine: true,
      trailing: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/fi-rr-bookmark.svg',
          color: Colors.green,
        ),
      ),
    );
  }
}
