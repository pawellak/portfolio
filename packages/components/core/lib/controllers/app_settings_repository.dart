import 'package:flutter/material.dart' show ThemeMode;

abstract class AppSettingsRepository {
  const AppSettingsRepository();

  //==============================================================================
  // ## Theme Settings ##
  //==========================================
  Future<bool> saveThemeMode(ThemeMode? mode);
  ThemeMode get currentThemeMode;

  //==============================================================================
  // ## Locale Settings ##
  //==========================================
  Future<bool> saveLocale(String? locale);
  String get currentLocale;
}
