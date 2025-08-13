import 'package:components_library/components_library_export.dart';

part 'settings_state.dart';

@injectable
class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  @override
  Future<void> initialMethod() async {}
}
