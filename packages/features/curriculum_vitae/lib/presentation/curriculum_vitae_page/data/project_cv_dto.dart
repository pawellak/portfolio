import 'package:components_library/components_library_export.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_model.dart';
import 'package:flutter/services.dart';

import 'package:pdf/widgets.dart' as pw;

part 'project_cv_dto.g.dart';

@JsonSerializable(createToJson: false)
class ProjectCvDto {
  const ProjectCvDto({
    required this.id,
    required this.title,
    required this.description,
    required this.advantages,
    required this.additional,
    required this.imageUrl,
    required this.dateStart,
    this.dateEnd,
  });

  factory ProjectCvDto.fromJson(Map<String, Object?> json) => _$ProjectCvDtoFromJson(json);

  final String id;
  final String title;
  final String description;
  final String advantages;
  final String additional;
  final String imageUrl;
  final DateTime dateStart;
  final DateTime? dateEnd;

  static Future<ProjectCvModel> toModel(ProjectCvDto model) async => ProjectCvModel(
    id: model.id,
    title: model.title,
    description: model.description,
    advantages: model.advantages,
    additional: model.additional,
    dateStart: model.dateStart,
    dateEnd: model.dateEnd,
    image: pw.MemoryImage((await rootBundle.load(model.imageUrl)).buffer.asUint8List()),
  );
}
