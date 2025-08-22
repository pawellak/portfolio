part of 'settings_cubit.dart';

sealed class SettingsState extends BaseState {
  const SettingsState();
}

class SettingsInitial extends SettingsState {
  const SettingsInitial();
}

class SettingsUpdateTheme extends SettingsState {
  const SettingsUpdateTheme();
}

class SettingsUpdateLocale extends SettingsState {
  const SettingsUpdateLocale();
}
