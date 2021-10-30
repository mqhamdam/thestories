import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorySinglePreview extends StatelessWidget {
  const StorySinglePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text(
                  "This is Header of Story",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                // show card if visibility private or grouped
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33)),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "FRIENDS",
                      style: TextStyle(fontSize: 10, color: Colors.green),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/fi-rr-bookmark.svg"))
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("This is Body - for overview"),
              ],
            ),
          ),
          Placeholder(
            fallbackHeight: 200,
            strokeWidth: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Wrap(
                  runAlignment: WrapAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons/fi-rr-hastag.svg"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/fi-rr-marker.svg"),
                Text("Seoul, South Korea"),
                Spacer(),
                Text("By @username"),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/fi-rr-thumbs-up.svg"),
                    label: Text("520")),
                TextButton.icon(
                    onPressed: () {},
                    icon:
                        SvgPicture.asset("assets/icons/fi-rr-thumbs-down.svg"),
                    label: Text("520")),
                TextButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/fi-rr-comments.svg"),
                    label: Text("520")),
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
