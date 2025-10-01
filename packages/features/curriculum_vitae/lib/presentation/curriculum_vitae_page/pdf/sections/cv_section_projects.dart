import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/data/project_model.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_model.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_image_path_widget.dart';

import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

const _kImageRadius = 12.0;

class CvSectionProjects extends pw.StatelessWidget {
  CvSectionProjects(this.modelList);

  final List<ProjectImageModel> modelList;

  @override
  pw.Widget build(pw.Context context) => CvTitleContainer(
    icon: FluentIcons.book_database_24_regular,
    title: 'label.cv.section.projects',
    child: pw.GridView(
      crossAxisSpacing: Dimens.dimen12,
      mainAxisSpacing: Dimens.dimen12,
      children: modelList.map(_CvSectionProject.new).toList(),
      crossAxisCount: 3,
      childAspectRatio: 0.8,
    ),
  );
}

class _CvSectionProject extends pw.StatelessWidget {
  _CvSectionProject(this.model);

  final ProjectImageModel model;

  @override
  pw.Widget build(pw.Context context) {
    return PfContainer(
      backgroundColor: PdfColors.white,
      child: PfColumn(
        children: [
          PfImagePathWidget(image: model.image, padding: pw.EdgeInsets.zero),
          pw.Expanded(child: PfColumn(children: [

            PfLabel(model.title),
            PfLabel('Ponad 150+ widoków\nSzczegóły umowy\nE-opłaty za prąd')

          ])),
        ],
      ),
    );

    return PfImagePathWidget(
      image: model.image,
      width: 10,
      padding: pw.EdgeInsets.zero,
      // clipRadius: ,
      // borderRadius: const pw.BorderRadius.only(
      //   topLeft: pw.Radius.circular(_kImageRadius),
      //   topRight: pw.Radius.circular(_kImageRadius),
      // ),
    );
  }
}
