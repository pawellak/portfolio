import 'package:components_core/controllers/app_settings_repository.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:injectable/injectable.dart' show Injectable;
import 'package:shared_preferences/shared_preferences.dart' show SharedPreferences;

// SharedPreferences Keys
const String _prefsKeyThemeModeIndex = 'prefs_theme_mode_index';
const String _prefsKeyLocaleCode = 'prefs_locale_code';

// Default Values
const String _defaultLocaleCode = 'en';
const ThemeMode _defaultAppThemeMode = ThemeMode.system;

@Injectable(as: AppSettingsRepository)
class AppSettingsRepositoryImpl implements AppSettingsRepository {
  const AppSettingsRepositoryImpl(this._preferences);

  final SharedPreferences _preferences;

  //==============================================================================
  // ## Locale Settings ##
  //==========================================
  @override
  String get currentLocale => _preferences.getString(_prefsKeyLocaleCode) ?? _defaultLocaleCode;

  @override
  Future<bool> saveLocale(String? locale) => _preferences.setString(_prefsKeyLocaleCode, locale ?? _defaultLocaleCode);

  //==============================================================================
  // ## Theme Settings ##
  //==========================================
  @override
  ThemeMode get currentThemeMode {
    final themeIndex = _preferences.getInt(_prefsKeyThemeModeIndex);
    if (themeIndex == null || themeIndex < 0 || themeIndex >= ThemeMode.values.length) {
      return _defaultAppThemeMode;
    }
    return ThemeMode.values[themeIndex];
  }

  @override
  Future<bool> saveThemeMode(ThemeMode? mode) async {
    final themeIndexToSave = (mode ?? _defaultAppThemeMode).index;
    return _preferences.setInt(_prefsKeyThemeModeIndex, themeIndexToSave);
  }
}
