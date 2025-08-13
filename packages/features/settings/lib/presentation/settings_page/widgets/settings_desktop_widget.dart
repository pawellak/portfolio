import 'package:flutter/material.dart';

class SettingsDesktopWidget extends StatelessWidget {
  const SettingsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [Center(child: Text('Settings1'))],
          ),
          Column(
            children: [Center(child: Text('Settings2'))],
          ),
        ],
      );
}
