import 'package:components_core/controllers/app_settings_repository.dart';
import 'package:components_core/di/core_package.dart' show getIt;
import 'package:flutter/material.dart' show ChangeNotifier, ThemeMode;

class AppSettingsProvider with ChangeNotifier {
  ThemeMode get currentThemeMode => getIt<AppSettingsRepository>().currentThemeMode;

  void notifyAppSettingsChanges() {
    notifyListeners();
  }
}
