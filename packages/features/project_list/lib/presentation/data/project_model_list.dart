import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/data/project_model.dart';

part 'project_model_list.g.dart';

@JsonSerializable(createToJson: false)
class ProjectModelList {
  const ProjectModelList({required this.result, required this.length});

  factory ProjectModelList.fromJson(Map<String, dynamic> json) {
    return _$ProjectModelListFromJson(json);
  }

  final int length;
  final List<ProjectModel> result;
}
