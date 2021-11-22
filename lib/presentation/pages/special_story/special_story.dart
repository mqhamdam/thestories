import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';
import 'package:thestories/presentation/pages/stories/widgets/story_mini_preview.dart';
import 'package:thestories/presentation/routes/app_router.gr.dart';

class SpecialStoryScreen extends StatelessWidget {
  const SpecialStoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Text(
          'Special Stories',
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
                      const CircleAvatar(
                        radius: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Group Name',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          const InfiniteStoryListScreenRoute().show(context);
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
                    const InfiniteStoryListScreenRoute().show(context);
                  },
                  child: const Text('See all'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
