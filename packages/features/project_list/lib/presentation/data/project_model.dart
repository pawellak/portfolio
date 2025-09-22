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
    required this.introduction,
    required this.introductionUrl,
    required this.development,
    required this.developmentUrl,
    required this.conclusion,
    required this.conclusionUrl,
  });

  factory ProjectModel.fromJson(Map<String, Object?> json) => _$ProjectModelFromJson(json);

  final String id;
  final String title;
  final String shortDescription;
  final String shortDescriptionUrl;
  final String introduction;
  final String introductionUrl;
  final String development;
  final String developmentUrl;
  final String conclusion;
  final String conclusionUrl;
  final DateTime? dateStart;
  final DateTime? dateEnd;
}
