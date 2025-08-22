import 'package:feature_settings/presentation/settings_page/widgets/setting_list_widget.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_label_widget.dart';
import 'package:flutter/material.dart' show Column, Spacer, StatelessWidget, Widget;

const _kListFlex = 2;

class SettingsCompactWidget extends StatelessWidget {
  const SettingsCompactWidget({super.key});

  @override
  Widget build(_) => const Column(
        children: [
          Spacer(flex: _kListFlex),
          SettingListWidget(),
          Spacer(flex: _kListFlex),
          SettingsLabelWidget(isSpacer: false),
        ],
      );
}
