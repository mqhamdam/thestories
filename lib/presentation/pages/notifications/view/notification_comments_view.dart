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
                  const CircleAvatar(),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Name'),
                      Text('@username'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Spacer(),
                  Text(DateTime.now().toString()),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/fi-rr-comment.svg',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('This is Comment'),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/fi-rr-arrow-small-right.svg',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Story Header'),
                      Text('Story Body\nonly twoline'),
                    ],
                  ),
                  const Spacer(),
                  const Placeholder(
                    fallbackHeight: 50,
                    fallbackWidth: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },);
  }
}
