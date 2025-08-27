import 'package:feature_settings/presentation/settings_page/widgets/settings_section_label.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_section_options.dart';
import 'package:flutter/material.dart';

const _kLabelFlex = 3;
const _kOptionsFlex = 4;

class SettingsExpandedWidget extends StatelessWidget {
  const SettingsExpandedWidget({super.key});

  @override
  Widget build(_) => const Row(
        children: [
          Expanded(flex: _kLabelFlex, child: SettingsSectionLabel()),
          Expanded(flex: _kOptionsFlex, child: SettingSectionOptions()),
        ],
      );
}
