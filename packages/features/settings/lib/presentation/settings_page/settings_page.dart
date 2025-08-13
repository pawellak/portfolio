import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_desktop_widget.dart';
import 'package:feature_settings/presentation/settings_page/widgets/settings_mobile_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends BasePage<SettingsCubit> {
  const SettingsPage({super.key});

  static const String path = '/$name';
  static const String name = 'about-me';

  @override
  String get goName => name;

  @override
  String get goPath => goPath;

  @override
  ClAdapter buildPage(BuildContext context) =>
      const ClAdapter(desktop: SettingsDesktopWidget(), mobile: SettingsMobileWidget());
}
