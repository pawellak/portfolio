import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/data/project_cv_model.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_image_path_widget.dart';

import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_sizebox.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

const _kRowItems = 3;

class CvSectionProjects extends pw.StatelessWidget {
  CvSectionProjects(this.modelList);

  final List<ProjectCvModel> modelList;

  @override
  pw.Widget build(pw.Context context) {
    final partitionedRows = _partition(modelList, _kRowItems);

    return CvTitleContainer(
      icon: FluentIcons.book_database_24_regular,
      margin: Dimens.dimen0,
      title: 'label.cv.section.projects',
      child: pw.Column(
        children: [
          for (int i = 0; i < partitionedRows.length; i++) ...[
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                for (int j = 0; j < partitionedRows[i].length; j++) ...[
                  pw.Expanded(child: _CvSectionProject(partitionedRows[i][j])),
                  if (j < partitionedRows[i].length - 1) pw.SizedBox(width: Dimens.dimen12),
                ],
                if (partitionedRows[i].length < _kRowItems)
                  pw.Expanded(flex: _kRowItems - partitionedRows[i].length, child: pw.Container()),
              ],
            ),
            if (i < partitionedRows.length - 1) pw.SizedBox(height: Dimens.dimen12),
          ],
        ],
      ),
    );
  }

  List<List<ProjectCvModel>> _partition(List<ProjectCvModel> list, int size) {
    final result = <List<ProjectCvModel>>[];
    for (var i = 0; i < list.length; i += size) {
      result.add(list.sublist(i, i + size > list.length ? list.length : i + size));
    }
    return result;
  }
}

class _CvSectionProject extends pw.StatelessWidget {
  _CvSectionProject(this.model);

  final ProjectCvModel model;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    height: model.additional.isEmpty ? Dimens.dimen170 : Dimens.dimen180,
    backgroundColor: PdfColors.white,
    child: PfColumn(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        PfImagePathWidget(image: model.image, padding: pw.EdgeInsets.zero),
        PfSizeBox(height: Dimens.dimen4),
        pw.Expanded(
          child: PfColumn(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              PfLabel(model.title, textAlign: pw.TextAlign.center, fontWeight: pw.FontWeight.bold),
              pw.SizedBox(height: Dimens.dimen3),
              if (model.additional.isNotEmpty) ...[
                PfLabel(
                  model.additional,
                  textAlign: pw.TextAlign.center,
                  fontWeight: pw.FontWeight.bold,
                  style: const pw.TextStyle(fontSize: Dimens.dimen9, color: PdfColors.amber800),
                ),
                pw.SizedBox(height: Dimens.dimen6),
              ],
              pw.Expanded(
                child: pw.Center(
                  child: PfLabel(
                    model.advantages,
                    style: const pw.TextStyle(fontSize: Dimens.dimen9),
                    textAlign: pw.TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
