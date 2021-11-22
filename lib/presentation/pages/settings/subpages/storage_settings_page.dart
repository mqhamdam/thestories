import 'package:flutter/material.dart';
class StorageSettingsScreen extends StatelessWidget {
  const StorageSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage and Network Settings'),
      ),
      body: ListView(
        children: [
          Card(
            child: SwitchListTile.adaptive(
              value: true,
              onChanged: (value) {},
            ),
          ),
          
        ],
      ),
    );
  }
}
