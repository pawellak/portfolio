import 'package:flutter/material.dart' show BuildContext, Column, MainAxisAlignment, StatelessWidget, Text, Widget;

class SettingsLabelWidget extends StatelessWidget {
  const SettingsLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Settings label widget')]);
  }
}
