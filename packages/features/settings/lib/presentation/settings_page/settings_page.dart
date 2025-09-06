import 'package:components_library/components_library_export.dart'
    show AppSettingsProvider, BasePage, BlocListener, BuildContextEasyLocalizationExtension, ClAdapter, ReadContext;
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart';
import 'package:feature_settings/presentation/settings_page/settings_compact_widget.dart';
import 'package:feature_settings/presentation/settings_page/settings_expanded_widget.dart';
import 'package:flutter/material.dart';

const _kPageName = 'settings-page';

const _kDurationForSwitchAnimation = Duration(milliseconds: 200);

class SettingsPage extends BasePage<SettingsCubit> {
  const SettingsPage({super.key});

  static const String name = _kPageName;
  static const String path = '/$_kPageName';

  @override
  Widget buildPage(_) => BlocListener<SettingsCubit, SettingsState>(
        listener: (context, state) async {
          switch (state) {
            case SettingsUpdateTheme():
              await _handleToggleTheme(context);
            case SettingsUpdateLocale():
              final currentLocal = context.read<SettingsCubit>().currentLocale;
              await context.setLocale(Locale(currentLocal));
            case SettingsInitial():
              break;
          }
        },
        child: const CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: ClAdapter(expanded: SettingsExpandedWidget(), compact: SettingsCompactWidget()),
            ),
          ],
        ),
      );

  Future<void> _handleToggleTheme(BuildContext context) async {
    await Future<void>.delayed(_kDurationForSwitchAnimation);
    if (context.mounted) {
      context.read<AppSettingsProvider>().refreshApp();
    }
  }
}
