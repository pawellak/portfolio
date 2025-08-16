import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';
import 'package:pawellak_portfolio/core/i18n/labels_loader.dart';

Widget setupL10n(Widget child) => EasyLocalization(
  supportedLocales: AppLocale.supportedLocales,
  path: LabelsLoader.localLabelsPath,
  assetLoader: const LabelsLoader(),
  startLocale: AppLocale.pl,
  fallbackLocale: AppLocale.pl,
  child: child,
);
