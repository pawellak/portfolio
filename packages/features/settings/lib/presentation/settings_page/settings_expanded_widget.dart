import 'package:feature_settings/presentation/settings_page/widgets/settings_label_widget.dart';
import 'package:flutter/material.dart';

class SettingsExpandedWidget extends StatelessWidget {
  const SettingsExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SettingsLabelWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Settings Expanded')],
          ),
        ],
      );
}
