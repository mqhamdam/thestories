import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_avatar.dart';
import 'package:thestories/presentation/pages/reading/reading_page.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class StoryListItem extends StatelessWidget {
  const StoryListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 13.0, left: 13, right: 13, bottom: 5),
            child: Row(
              children: [
                CustomAvatar(imgUrl: avatar_url_template, radius: 30),
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@this is user id",
                        style: TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(ReadingScreenRoute());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  child: Text(
                    "Read",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/fi-rr-bookmark.svg"),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This is Header",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              story_body_dummy_data,
              maxLines: 15,
            ),
          ),
          Divider(),
          Container(
            height: 220,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Image.network(
                  cover_for_story_template,
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
                  "assets/icons/fi-rr-hastag.svg",
                  height: 15,
                  color: Colors.black87,
                ),
                for (var item in List.generate(20, (index) => "Text$index"))
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33)),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        item,
                        style: TextStyle(color: Colors.white, fontSize: 8),
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
                Spacer(),
                SvgPicture.asset(
                  "assets/icons/fi-rr-clock.svg",
                  height: 10,
                  color: Colors.black87,
                ),
                SizedBox(width: 5),
                Text(
                  "2021-01-01",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                      fontSize: 10),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 10, right: 10, left: 10),
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
        ],
      ),
    );
  }
}
