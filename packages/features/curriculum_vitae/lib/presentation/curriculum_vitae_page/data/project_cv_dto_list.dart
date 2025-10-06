import 'package:components_library/components_library_export.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_dto.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_model.dart';

part 'project_cv_dto_list.g.dart';

@JsonSerializable(createToJson: false)
class ProjectCvDtoList {
  const ProjectCvDtoList({required this.result});

  factory ProjectCvDtoList.fromJson(Map<String, Object?> json) => _$ProjectCvDtoListFromJson(json);

  final List<ProjectCvDto> result;

  Future<List<ProjectCvModel>> toModel() async {
    final List<ProjectCvModel> modelList = [];

    for (final element in result) {
      final avc = await ProjectCvDto.toModel(element);
      modelList.add(avc);
    }

    return modelList;
  }
}
