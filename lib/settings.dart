import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> settingEntries = <String>[
      'Set counter',
      'Notifications',
      'About',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: settingEntries.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.insert_drive_file),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(settingEntries[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
