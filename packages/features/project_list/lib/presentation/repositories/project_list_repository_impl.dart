import 'package:collection/collection.dart';
import 'package:components_library/components_library_export.dart' show AppSettingsRepository, CoreLocalClient, Injectable;
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/data/project_model_list.dart';
import 'package:feature_project_list/presentation/repositories/project_list_repository.dart';
import 'package:flutter/foundation.dart';

@Injectable(as: ProjectListRepository)
class ProjectListRepositoryImpl implements ProjectListRepository {
  const ProjectListRepositoryImpl(this.client,this._repository);

  final CoreLocalClient client;
  final AppSettingsRepository _repository;

  @override
  Future<List<ProjectModel>> getProjectList() async {
    try {

      final json = await client.localFileByPath(feature: 'projects', fileName: 'projects',locale: _repository.currentLocale);
      return _onGetFileSuccess(json);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  List<ProjectModel> _onGetFileSuccess(Map<String, dynamic> response) {
    return ProjectModelList.fromJson(response).result;
  }

  @override
  Future<ProjectModel?> getProjectById(String id) async =>
      getProjectList().then((value) => value.firstWhereOrNull((element) => element.id == id));
}
