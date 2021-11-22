import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class StoryListItem extends StatelessWidget {
  const StoryListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
          bottom: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 13.0,
              left: 13,
              right: 13,
              bottom: 5,
            ),
            child: Row(
              children: [
                const CustomAvatar(imgUrl: avatarURLTemp, radius: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'This is user name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@this is user id',
                        style: TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const ReadingScreenRoute());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Read',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-bookmark.svg'),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'This is Header',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              storyBodyTemp,
              maxLines: 15,
            ),
          ),
          const Divider(),
          SizedBox(
            height: 220,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Image.network(
                  coverStoryTemp,
                  fit: BoxFit.cover,
                );
              },
              itemCount: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/fi-rr-hastag.svg',
                  height: 15,
                  color: Colors.black87,
                ),
                for (var item in List.generate(20, (index) => 'Text$index'))
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),
                    ),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/fi-rr-clock.svg',
                  height: 10,
                  color: Colors.black87,
                ),
                const SizedBox(width: 5),
                const Text(
                  '2021-01-01',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              right: 10,
              left: 10,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-thumbs-up.svg'),
                ),
                const Text('230'),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-thumbs-down.svg'),
                ),
                const Text('230'),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-comments.svg'),
                ),
                const Text('230'),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-menu-dots.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
