import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Text(
          'Notifications Settings',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/fi-rr-broom.svg',
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SwitchListTile.adaptive(
                value: true,
                onChanged: (value) {},
                title: const Text('Notifications'),
                secondary: SvgPicture.asset(
                  'assets/icons/fi-rr-bell.svg',
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                leading: SvgPicture.asset(
                  'assets/icons/fi-rr-bell-ring.svg',
                  color: Colors.black,
                ),
                title: const Text('General'),
                children: [
                  SwitchListTile.adaptive(
                    value: true,
                    onChanged: (value) {},
                    title: const Text('Recomendation'),
                  ),
                  SwitchListTile.adaptive(
                    value: true,
                    onChanged: (value) {},
                    title: const Text('Achievements'),
                  ),
                  const ExpansionTile(
                    title: Text('My favourite users'),
                  ),
                  const ExpansionTile(
                    title: Text('My favourite series'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                leading: SvgPicture.asset(
                  'assets/icons/fi-rr-world.svg',
                  color: Colors.black,
                ),
                title: const Text('Public Story'),
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-thumbs-up.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every vote up: '),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-thumbs-down.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every vote down: '),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-comment-alt.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every comment(s):'),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-asterik.svg',
                      color: Colors.black,
                    ),
                    title: const Text('Exceptions'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                leading: SvgPicture.asset(
                  'assets/icons/fi-rr-shield.svg',
                  color: Colors.black,
                ),
                title: const Text('Private Story'),
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-thumbs-up.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every vote up: '),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-thumbs-down.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every vote down: '),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-comment-alt.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every comment(s):'),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-asterik.svg',
                      color: Colors.black,
                    ),
                    title: const Text('Exceptions'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                leading: SvgPicture.asset(
                  'assets/icons/fi-rr-star.svg',
                  color: Colors.black,
                ),
                title: const Text('Special Story'),
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-thumbs-up.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every vote up: '),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-thumbs-down.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every vote down: '),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/fi-rr-comment-alt.svg',
                          color: Colors.black,
                        ),
                        title: const Text('Notify on every comment(s):'),
                      ),
                      Slider.adaptive(
                        label: '52',
                        divisions: 10,
                        value: 51,
                        onChanged: (value) {},
                        max: 1000,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-asterik.svg',
                      color: Colors.black,
                    ),
                    title: const Text('Exceptions'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                leading: SvgPicture.asset(
                  'assets/icons/fi-rr-user-add.svg',
                  color: Colors.black,
                ),
                title: const Text('Requests or new subscribers'),
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    Column(
                      children: [
                        SwitchListTile.adaptive(
                          value: true,
                          onChanged: (value) {},
                          title: const Text('Notify approved requests'),
                        ),
                        const ListTile(
                          title:
                              Text('Notify on every requests(new subscribers)'),
                        ),
                        Slider.adaptive(
                          label: '52',
                          divisions: 10,
                          value: 51,
                          onChanged: (value) {},
                          max: 1000,
                        ),
                      ],
                    ),
                  ],
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
