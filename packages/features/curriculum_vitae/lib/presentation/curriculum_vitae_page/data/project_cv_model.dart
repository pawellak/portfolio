import 'package:pdf/widgets.dart' as pw;

class ProjectCvModel {
  const ProjectCvModel({
    required this.id,
    required this.title,
    required this.additional,
    required this.description,
    required this.advantages,
    required this.image,
    required this.dateStart,
    required this.dateEnd,
  });

  final String id;
  final String title;
  final String additional;
  final String description;
  final String advantages;
  final pw.MemoryImage image;
  final DateTime dateStart;
  final DateTime? dateEnd;
}
