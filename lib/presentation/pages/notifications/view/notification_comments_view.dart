import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NCommentsView extends StatelessWidget {
  const NCommentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name"),
                      Text("@username"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Spacer(),
                  Text(DateTime.now().toString()),
                ],
              ),
              Divider(),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/fi-rr-comment.svg",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("This is Comment"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/fi-rr-arrow-small-right.svg",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Story Header"),
                      Text("Story Body\nonly twoline"),
                    ],
                  ),
                  Spacer(),
                  Placeholder(
                    fallbackHeight: 50,
                    fallbackWidth: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
