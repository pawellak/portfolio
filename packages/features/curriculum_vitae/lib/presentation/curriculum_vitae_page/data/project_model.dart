import 'package:components_library/components_library_export.dart';
import 'package:feature_curriculum_vitae/data/project_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/widgets.dart' as pw;

part 'project_model.g.dart';

@JsonSerializable(createToJson: false)
class ProjectImageModel {
  const ProjectImageModel({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.dateStart,
    required this.dateEnd,
    required this.image,
  });

  final String id;
  final String title;
  final String shortDescription;
  final pw.MemoryImage image;
  final DateTime dateStart;
  final DateTime? dateEnd;

  static Future<ProjectImageModel> fromModel(ProjectModel model) async => ProjectImageModel(
    id: model.id,
    title: model.title,
    shortDescription: model.shortDescription,
    dateStart: model.dateStart,
    dateEnd: model.dateEnd,
    image: pw.MemoryImage((await rootBundle.load(model.shortDescriptionUrl)).buffer.asUint8List()),
  );
}
