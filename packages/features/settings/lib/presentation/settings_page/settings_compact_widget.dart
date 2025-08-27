import 'package:feature_settings/presentation/settings_page/widgets/settings_section_label.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_section_options.dart';
import 'package:flutter/material.dart' show Column, Spacer, StatelessWidget, Widget;

class SettingsCompactWidget extends StatelessWidget {
  const SettingsCompactWidget({super.key});

  @override
  Widget build(_) => const Column(
        children: [
          Spacer(),
          SettingSectionOptions(),
          Spacer(),
          SettingsSectionLabel(),
        ],
      );
}
