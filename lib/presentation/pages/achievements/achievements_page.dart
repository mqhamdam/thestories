import 'package:flutter/material.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Text(
          'Achievements',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: const Text('Bronze'),
            children: [
              Wrap(
                children: [
                  for (var i = 0; i < 10; i++)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          child: Image.network(
                            avatarURLTemp,
                            height: 100,
                          ),
                        ),
                       const Text('Achivement name')
                      ],
                    ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
