import 'package:feature_curriculum_vitae/data/project_model.dart';

abstract class CurriculumVitaeRepository {
  const CurriculumVitaeRepository();

  Future<List<ProjectModel>> getProjectList();
}
