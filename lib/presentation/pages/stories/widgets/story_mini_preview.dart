import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/data/dummy_data.dart';

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
                Text(
                  "This is Header",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                      Text("Read", style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                          "assets/icons/fi-rr-angle-double-small-right.svg",
                          color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              story_body_dummy_data,
              maxLines: 10,
            ),
            Divider(),
            Row(
              children: [
                Text("2021. 10. 21 07:07",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black87,
                        fontSize: 10)),
                Spacer(),
                Text("By @username",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black87,
                        fontSize: 10)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
