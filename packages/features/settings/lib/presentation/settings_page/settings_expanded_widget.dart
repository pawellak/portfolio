import 'package:feature_settings/presentation/settings_page/widgets/setting_list_widget.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_label_widget.dart';
import 'package:flutter/material.dart';

const _kSettingsFlex = 3;
const _kLabelFlex = 2;

class SettingsExpandedWidget extends StatelessWidget {
  const SettingsExpandedWidget({super.key});

  @override
  Widget build(_) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: _kLabelFlex, child: SettingsLabelWidget()),
          Expanded(flex: _kSettingsFlex, child: SettingListWidget()),
        ],
      );
}
