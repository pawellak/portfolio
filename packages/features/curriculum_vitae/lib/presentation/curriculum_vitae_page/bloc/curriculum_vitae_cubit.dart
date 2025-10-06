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
    final projectList = await _getProjectList();

    final pdfDocument = await PdfGenerator.addBodyToDocument(
      pageList: [
        PfColumn(
          children: [
            await _buildSectionContact(),
            await _buildSectionAboutMe(),
            await _buildSectionEducation(),
            await _buildSectionExperience(),
            await _buildSectionSkills(),
          ],
        ),
        PfColumn(children: [await _buildSectionProjects(projectList), await _buildSectionAgreements()]),
      ],
      document: pw.Document(),
    );

    emit(CurriculumVitaeUpdateView(pdfDocument));
  }

  Future<List<ProjectCvModel>> _getProjectList() async {
    final model = await _repository.getProjectList();
    return model;
  }

  Future<pw.Widget> _buildSectionContact() async {
    final profile = pw.MemoryImage((await rootBundle.load(AppImage.me)).buffer.asUint8List());
    final portfolio = pw.MemoryImage((await rootBundle.load(AppImage.portfolio)).buffer.asUint8List());
    final github = pw.MemoryImage((await rootBundle.load(AppImage.github)).buffer.asUint8List());
    final linked = pw.MemoryImage((await rootBundle.load(AppImage.linked)).buffer.asUint8List());

    return PfRow(
      children: [
        pw.Expanded(child: CvSectionContact(profile)),
        pw.Expanded(child: CvSectionSocial(portfolio: portfolio, github: github, linked: linked)),
      ],
    );
  }

  Future<pw.Widget> _buildSectionAboutMe() async => CvSectionAboutMe();

  Future<pw.Widget> _buildSectionEducation() async {
    final pwr = pw.MemoryImage((await rootBundle.load(AppImage.pwr)).buffer.asUint8List());
    return CvSectionEducation(pwr: pwr);
  }

  Future<pw.Widget> _buildSectionSkills() async => CvSectionSkills();

  Future<pw.Widget> _buildSectionExperience() async {
    return CvSectionExperience();
  }

  Future<pw.Widget> _buildSectionProjects(List<ProjectCvModel> modelList) async => CvSectionProjects(modelList);

  Future<pw.Widget> _buildSectionAgreements() async => CvSectionAgreements();
}
