import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorySinglePreview extends StatelessWidget {
  const StorySinglePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                const Text(
                  'This is Header of Story',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Spacer(),
                // show card if visibility private or grouped
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'FRIENDS',
                      style: TextStyle(fontSize: 10, color: Colors.green),
                    ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text('This is Body - for overview'),
              ],
            ),
          ),
          const Placeholder(
            fallbackHeight: 200,
            strokeWidth: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Wrap(
                  children: [
                    SvgPicture.asset('assets/icons/fi-rr-hastag.svg'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/fi-rr-marker.svg'),
                const Text('Seoul, South Korea'),
                const Spacer(),
                const Text('By @username'),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-thumbs-up.svg'),
                  label: const Text('520'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-thumbs-down.svg'),
                  label: const Text('520'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/fi-rr-comments.svg'),
                  label: const Text('520'),
                ),
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
