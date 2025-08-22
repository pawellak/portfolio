import 'package:flutter/material.dart' show Brightness, BuildContext, MediaQuery, ThemeMode;

extension ThemeModeExtensions on ThemeMode {
  bool isDarkMode(BuildContext context) {
    if (index == ThemeMode.system.index) {
      return MediaQuery.of(context).platformBrightness == Brightness.dark;
    }
    return index == ThemeMode.dark.index;
  }
}
