import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';

class BookmarksSettingsScreen extends StatelessWidget {
  const BookmarksSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        title: Text("Bookmark Settings", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/fi-rr-add.svg",
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: Text("Saved stories"),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: Text("Saved series"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
