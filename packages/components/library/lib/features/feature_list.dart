import 'package:components_library/features/feature.dart';

abstract class FeatureAboutMe implements Feature {
  const FeatureAboutMe();
}

abstract class FeatureSettings implements Feature {
  const FeatureSettings();
}

abstract class FeatureWeather implements Feature {
  const FeatureWeather();
}

abstract class FeatureProjectList implements Feature {
  const FeatureProjectList();

  String get projectListPageName;
}
