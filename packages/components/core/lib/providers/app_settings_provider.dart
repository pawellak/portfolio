import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/controllers/app_settings_repository.dart';
import 'package:flutter/material.dart' show ChangeNotifier, ThemeMode;

@injectable
class AppSettingsProvider with ChangeNotifier {
  AppSettingsProvider(this._repository);

  final AppSettingsRepository _repository;

  ThemeMode get currentThemeMode => _repository.currentThemeMode;

  void refreshApp() {
    notifyListeners();
  }
}
