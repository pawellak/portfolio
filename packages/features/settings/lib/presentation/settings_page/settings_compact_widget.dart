import 'package:feature_settings/presentation/settings_page/widgets/setting_list_widget.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_label_widget.dart';
import 'package:flutter/material.dart' show Column, Spacer, StatelessWidget, Widget;

class SettingsCompactWidget extends StatelessWidget {
  const SettingsCompactWidget({super.key});

  @override
  Widget build(_) => const Column(
        children: [
          Spacer(),
          SettingListWidget(),
          Spacer(),
          SettingsLabelWidget(),
        ],
      );
}
