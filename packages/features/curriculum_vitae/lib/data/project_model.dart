import 'package:components_library/components_library_export.dart';

part 'project_model.g.dart';

@JsonSerializable(createToJson: false)
class ProjectModel {
  const ProjectModel({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.dateStart,
    required this.dateEnd,
    required this.shortDescriptionUrl,
  });

  factory ProjectModel.fromJson(Map<String, Object?> json) => _$ProjectModelFromJson(json);

  final String id;
  final String title;
  final String shortDescription;
  final String shortDescriptionUrl;
  final DateTime dateStart;
  final DateTime? dateEnd;
}
