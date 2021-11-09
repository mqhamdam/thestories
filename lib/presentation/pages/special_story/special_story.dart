import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';
import 'package:thestories/presentation/pages/infinite_stroy_list/widgets/story_list_item.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class SpecialStoryScreen extends StatelessWidget {
  const SpecialStoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        title: Text(
          "Special Stories",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Group Name",
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
          );
        },
      ),
    );
  }
}
