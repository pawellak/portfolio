import 'dart:ui';

import 'package:components_library/components_library_export.dart'
    show AppLocale, AppSettingsRepository, EasyLocalization, getIt;
import 'package:flutter/material.dart' show StatelessWidget, Widget;
import 'package:pawellak_portfolio/core/i18n/labels_loader.dart';

const String _translationsPath = 'assets/translations';

class L10nWrapper extends StatelessWidget {
  const L10nWrapper(this.child, {super.key});

  final Widget child;

  @override
  Widget build(_) => EasyLocalization(
    supportedLocales: AppLocale.supportedLocales,
    path: _translationsPath,
    assetLoader: const LabelsLoader(),
    startLocale: _currentAppLocale,
    fallbackLocale: _currentAppLocale,
    child: child,
  );

  Locale get _currentAppLocale => Locale(getIt<AppSettingsRepository>().currentLocale);
}
