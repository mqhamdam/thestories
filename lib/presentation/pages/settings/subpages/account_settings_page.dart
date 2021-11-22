import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Text(
          'Account settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SwitchListTile.adaptive(
                    value: true,
                    onChanged: (value) {},
                    title: const Text('Private Account'),
                    secondary: SvgPicture.asset(
                      'assets/icons/fi-rr-lock.svg',
                      color: Colors.black,
                    ),
                  ),
                  SwitchListTile.adaptive(
                    value: false,
                    onChanged: (value) {},
                    title: const Text('Premium Account'),
                    secondary: SvgPicture.asset(
                      'assets/icons/fi-rr-crown.svg',
                      color: Colors.black,
                    ),
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
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Change Email'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-at.svg',
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: const Text('Change Password'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-lock-alt.svg',
                      color: Colors.black,
                    ),
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
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Email verification'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-checkbox.svg',
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: const Text('Account verification'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-shield-check.svg',
                      color: Colors.black,
                    ),
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
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Pause Account'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-pause.svg',
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: const Text('Delete Account'),
                    leading: SvgPicture.asset(
                      'assets/icons/fi-rr-cross-circle.svg',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
