import 'package:components_library/components_library_export.dart';
import 'package:feature_about_me/about_me_feature_impl.dart';

class MainRouter {
  const MainRouter();

  static GoRouter router = GoRouter(initialLocation: FeatureAboutMeImpl.featurePath, routes: []);
}
