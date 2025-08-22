import 'package:components_library/components_library_export.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_page.dart';

@Singleton(as: FeatureAboutMe)
class FeatureAboutMeImpl implements FeatureAboutMe {
  const FeatureAboutMeImpl();

  static const String path = AboutMePage.path;
  static const String name = AboutMePage.name;
}
