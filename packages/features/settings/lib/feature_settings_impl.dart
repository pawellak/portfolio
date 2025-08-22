import 'package:components_library/components_library_export.dart';
import 'package:feature_settings/presentation/settings_page/settings_page.dart';

@Singleton(as: FeatureSettings)
class FeatureSettingsImpl implements FeatureSettings {
  const FeatureSettingsImpl();

  static const String name = SettingsPage.name;
  static const String path = SettingsPage.path;
}
