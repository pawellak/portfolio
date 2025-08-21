import 'package:feature_settings/presentation/settings_page/widgets/setting_list_widget.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_label_widget.dart';
import 'package:flutter/material.dart';

const _kSettingsFlex = 2;

class SettingsCompactWidget extends StatelessWidget {
  const SettingsCompactWidget({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(flex: _kSettingsFlex, child: SettingListWidget()),
          SettingsLabelWidget(),
        ],
      );
}
