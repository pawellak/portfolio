import 'package:components_library/components_library_export.dart'
    show AppSettingsRepository, BaseCubit, BaseState, injectable;
import 'package:flutter/material.dart' show ThemeMode;

part 'settings_state.dart';

@injectable
class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit(this._repository) : super(const SettingsInitial());

  final AppSettingsRepository _repository;

  ThemeMode get currentTheme => _repository.currentThemeMode;

  String get currentLocale => _repository.currentLocale;

  void onToggleThemePressed(bool? isDarkMode) {
    _repository.saveThemeMode(_getThemeModeToSave(isDarkMode));
    emit(const SettingsUpdateTheme());
  }

  void onLanguageRadioChanged(String? locale) {
    _repository.saveLocale(locale);
    emit(const SettingsUpdateLocale());
  }

  ThemeMode? _getThemeModeToSave(bool? isDarkMode) {
    final ThemeMode? themeModeToSave;
    if (isDarkMode == null) {
      themeModeToSave = null;
    } else {
      themeModeToSave = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    }
    return themeModeToSave;
  }
}
