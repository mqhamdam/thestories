import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/pages/reading/reading_page.dart';

class StoryMiniPreview extends StatelessWidget {
  const StoryMiniPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, top: 10, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'This is Header',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  onPressed: () {
                    pushNewScreen(
                      context,
                      screen: const ReadingScreen(),
                    );
                  },
                  child: Row(
                    children: [
                      const Text('Read', style: TextStyle(color: Colors.white)),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/icons/fi-rr-angle-double-small-right.svg',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            const Text(
              storyBodyTemp,
              maxLines: 10,
            ),
            const Divider(),
            Row(
              children: const [
                Text(
                  '2021. 10. 21 07:07',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                    fontSize: 10,
                  ),
                ),
                Spacer(),
                CustomAvatar(imgUrl: avatarURLTemp, radius: 10),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'By @username',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
