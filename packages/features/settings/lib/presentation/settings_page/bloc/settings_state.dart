part of 'settings_cubit.dart';

sealed class SettingsState extends BaseState {}

class SettingsInitial extends SettingsState {}

class SettingsChanged extends SettingsState {
  SettingsChanged({required this.isDarkMode, required this.isEnglish});

  final bool isDarkMode;
  final bool isEnglish;
}
