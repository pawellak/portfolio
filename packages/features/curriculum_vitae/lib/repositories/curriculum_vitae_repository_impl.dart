import 'package:components_library/components_library_export.dart'
    show AppSettingsRepository, CoreLocalClient, Injectable;
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_dto_list.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_model.dart';
import 'package:feature_curriculum_vitae/repositories/curriculum_vitae_repository.dart';
import 'package:flutter/foundation.dart';

@Injectable(as: CurriculumVitaeRepository)
class CurriculumVitaRepositoryImpl implements CurriculumVitaeRepository {
  const CurriculumVitaRepositoryImpl(this.client, this._repository);

  final CoreLocalClient client;
  final AppSettingsRepository _repository;

  @override
  Future<List<ProjectCvModel>> getProjectList() async {
    try {
      final json = await client.localFileByPath(feature: 'curriculum_vitae', locale: _repository.currentLocale);
      return _onGetFileSuccess(json);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  Future<List<ProjectCvModel>> _onGetFileSuccess(Map<String, dynamic> response) async {
    final result = await ProjectCvDtoList.fromJson(response).toModel();
    return result;
  }
}
