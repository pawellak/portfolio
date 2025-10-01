import 'package:feature_project_list/data/project_model.dart';

abstract class ProjectListRepository {
  const ProjectListRepository();

  Future<List<ProjectModel>> getProjectList();

  Future<ProjectModel?> getProjectById(String id);
}
