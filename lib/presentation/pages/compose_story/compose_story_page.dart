import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/pages/compose_story/compose_tab/compose_tab.dart';
import 'package:thestories/presentation/pages/compose_story/preview_tab/preview_tab.dart';

class ComposeStoryScreen extends StatelessWidget {
  const ComposeStoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => AutoRouter.of(context).pop(),
            icon: SvgPicture.asset('assets/icons/fi-rr-angle-left.svg'),
          ),
          centerTitle: false,
          title: const Text(
            'Compose Story',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),
                    ),
                  ),
                ),
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/fi-rr-broom.svg'),
                label: const Text('Refresh',
                    style: TextStyle(color: Colors.black)),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/fi-rr-info.svg'),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Compose",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Preview",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ComposeTab(),
            PreviewTab(),
          ],
        ),
      ),
    );
  }
}
