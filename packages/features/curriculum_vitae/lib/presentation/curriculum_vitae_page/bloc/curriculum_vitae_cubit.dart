import 'dart:typed_data' show Uint8List;

import 'package:components_library/components_library_export.dart' show BaseCubit, BaseState, injectable;
import 'package:components_library/resources/icons/app_image.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_model.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/pdf_generator.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_about_me.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_agreements.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_contact.dart.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_education.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_experience.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_projects.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_skills.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_social.dart.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_section_teck_stack.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:feature_curriculum_vitae/repositories/curriculum_vitae_repository.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/widgets.dart' as pw;

part 'curriculum_vitae_state.dart';

@injectable
class CurriculumVitaeCubit extends BaseCubit<CurriculumVitaeState> {
  CurriculumVitaeCubit(this._repository) : super(const CurriculumVitaeInitial());

  final CurriculumVitaeRepository _repository;

  @override
  Future<void> initialMethod() async {
    await super.initialMethod();
    final (projectList, images) = await (_repository.getProjectList(), _loadPdfImages()).wait;
    final pdfDocument = await _createPdfDocument(projectList, images);
    final pdf = await pdfDocument.save();
    emit(CurriculumVitaeUpdateView(pdf));
  }

  Future<pw.Document> _createPdfDocument(List<ProjectCvModel> projectList, _PdfImages images) async {
    final page1 = PfColumn(
      children: [
        _buildSectionContact(images),
        CvSectionAboutMe(),
        CvSectionTechStack(),
        CvSectionEducation(pwr: images.pwr),
        CvSectionExperience(),
      ],
    );

    final page2 = PfColumn(children: [CvSectionProjects(projectList), CvSectionAgreements()]);
    return PdfGenerator.addBodyToDocument(pageList: [page1, page2], document: pw.Document());
  }

  pw.Widget _buildSectionContact(_PdfImages images) => PfRow(
    children: [
      pw.Expanded(child: CvSectionContact(images.profile)),
      pw.Expanded(child: CvSectionSocial(portfolio: images.portfolio, github: images.github, linked: images.linked)),
    ],
  );

  Future<_PdfImages> _loadPdfImages() async {
    Future<pw.MemoryImage> loadImage(String path) async =>
        pw.MemoryImage((await rootBundle.load(path)).buffer.asUint8List());

    final results = await Future.wait([
      loadImage(AppImage.me),
      loadImage(AppImage.portfolio),
      loadImage(AppImage.github),
      loadImage(AppImage.linked),
      loadImage(AppImage.pwr),
    ]);

    return _PdfImages(
      profile: results[0],
      portfolio: results[1],
      github: results[2],
      linked: results[3],
      pwr: results[4],
    );
  }
}

class _PdfImages {
  _PdfImages({
    required this.profile,
    required this.portfolio,
    required this.github,
    required this.linked,
    required this.pwr,
  });

  final pw.MemoryImage profile;
  final pw.MemoryImage portfolio;
  final pw.MemoryImage github;
  final pw.MemoryImage linked;
  final pw.MemoryImage pwr;
}
