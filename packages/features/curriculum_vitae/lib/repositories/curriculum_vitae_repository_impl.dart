import 'package:components_library/components_library_export.dart'
    show AppSettingsRepository, CoreLocalClient, Injectable, IterableExtension;
import 'package:feature_curriculum_vitae/data/project_model.dart';
import 'package:feature_curriculum_vitae/data/project_model_list.dart';
import 'package:feature_curriculum_vitae/repositories/curriculum_vitae_repository.dart';
import 'package:flutter/foundation.dart';

@Injectable(as: CurriculumVitaeRepository)
class CurriculumVitaRepositoryImpl implements CurriculumVitaeRepository {
  const CurriculumVitaRepositoryImpl(this.client, this._repository);

  final CoreLocalClient client;
  final AppSettingsRepository _repository;

  @override
  Future<List<ProjectModel>> getProjectList() async {
    try {
      final json = await client.localFileByPath(feature: 'project_list', locale: _repository.currentLocale);
      return _onGetFileSuccess(json);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  List<ProjectModel> _onGetFileSuccess(Map<String, dynamic> response) => ProjectModelList.fromJson(response).result;
}
