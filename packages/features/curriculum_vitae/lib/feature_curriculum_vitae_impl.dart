import 'package:components_library/components_library_export.dart';

import 'presentation/curriculum_vitae_page/curriculum_vitae_page.dart';

@Singleton(as: FeatureCurriculumVitae)
class FeatureCurriculumVitaeImpl implements FeatureCurriculumVitae {
  const FeatureCurriculumVitaeImpl();

  static const String name = CurriculumVitaePage.name;
  static const String path = CurriculumVitaePage.path;
}
