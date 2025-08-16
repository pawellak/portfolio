import 'package:components_library/components_library_export.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_page.dart';

@Singleton(as: FeatureAboutMe)
class FeatureAboutMeImpl implements FeatureAboutMe {
  const FeatureAboutMeImpl();

  static const String featurePath = AboutMePage.path;
  static const String featureName = AboutMePage.name;

  @override
  String get path => AboutMePage.path;

  @override
  String get name => AboutMePage.name;
}
