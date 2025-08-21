import 'package:components_library/components_library_export.dart';

part 'settings_state.dart';

@injectable
class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  @override
  Future<void> initialMethod() async {
    _fetchSettings();
  }

  void _fetchSettings() {}

  void onToggleThemePressed(bool? isDarkMode) {
    emit(SettingsChanged(isDarkMode: isDarkMode??false,isEnglish: false));
  }

  void onLanguageRadioChanged(bool? isEnglish) {
    emit(SettingsChanged(isEnglish: !(isEnglish??false),isDarkMode: false));
  }
}
