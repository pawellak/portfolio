import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart';
import 'package:feature_settings/presentation/settings_page/settings_compact_widget.dart';
import 'package:feature_settings/presentation/settings_page/settings_expanded_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends BasePage<SettingsCubit> {
  const SettingsPage({super.key});

  static const String name = 'settings-page';
  static const String path = '/$name';

  @override
  ClAdapter buildPage(BuildContext context) =>
      const ClAdapter(expanded: SettingsExpandedWidget(), compact: SettingsCompactWidget());
}
