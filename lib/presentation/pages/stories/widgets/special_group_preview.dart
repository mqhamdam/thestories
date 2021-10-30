import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

class SpecialGroupMiniPreview extends StatelessWidget {
  const SpecialGroupMiniPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(avatar_url_template),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text("Group Name"),
                    Text("@author"),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("241 Stories",
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/icons/fi-rr-angle-small-right.svg",
                        color: Colors.white,
                      ),
                    ],
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
