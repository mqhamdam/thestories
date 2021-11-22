import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';
import 'package:thestories/presentation/pages/infinite_stroy_list/widgets/story_list_item.dart';

class InfiniteStoryListScreen extends StatelessWidget {
  const InfiniteStoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Text('Public/Private', style: TextStyle(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/fi-rr-settings-sliders.svg'),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        itemBuilder: (context, index) {
          return const StoryListItem();
        },
      ),
    );
  }
}
