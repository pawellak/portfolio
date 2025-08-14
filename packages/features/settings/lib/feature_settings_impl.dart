import 'package:components_library/components_library_export.dart';
import 'package:feature_settings/presentation/settings_page/settings_page.dart';

@Singleton(as: FeatureSettings)
class FeatureSettingsImpl implements FeatureSettings {
  const FeatureSettingsImpl();

  static const String featureName = SettingsPage.name;
  static const String featurePath = SettingsPage.path;

  @override
  String get path => SettingsPage.path;

  @override
  String get name => SettingsPage.name;
}
