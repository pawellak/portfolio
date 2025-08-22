import 'package:components_library/components_library_export.dart' show AppLocale, EasyLocalization;
import 'package:flutter/material.dart' show StatelessWidget, Widget;
import 'package:pawellak_portfolio/core/i18n/labels_loader.dart';

const String _translationsPath = 'assets/translations';

class AppSettingsL10nWrapper extends StatelessWidget {
  const AppSettingsL10nWrapper(this.child, {super.key});

  final Widget child;

  @override
  Widget build(_) => EasyLocalization(
    supportedLocales: AppLocale.supportedLocales,
    path: _translationsPath,
    assetLoader: const LabelsLoader(),
    startLocale: AppLocale.pl,
    fallbackLocale: AppLocale.pl,
    child: child,
  );
}
