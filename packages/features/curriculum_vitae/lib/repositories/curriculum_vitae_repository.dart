import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_model.dart';

abstract class CurriculumVitaeRepository {
  const CurriculumVitaeRepository();

  Future<List<ProjectCvModel>> getProjectList();
}
