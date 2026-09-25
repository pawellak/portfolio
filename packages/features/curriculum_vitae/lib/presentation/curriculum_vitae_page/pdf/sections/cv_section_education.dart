import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/resources_exports.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_image_path_widget.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_sizebox.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class CvSectionEducation extends pw.StatelessWidget {
  CvSectionEducation({required this.pwr});

  final pw.MemoryImage pwr;

  @override
  pw.Widget build(pw.Context context) => CvTitleContainer(
    icon: FluentIcons.hat_graduation_16_regular,
    title: 'label.about_me.education.title',
    child: PfRow(
      children: [
        pw.Expanded(child: _CvSectionEducationWidget(labelKey: 'label.about_me.education.eng', pwr: pwr)),
        PfSizeBox(width: Dimens.dimen8),
        pw.Expanded(child: _CvSectionEducationWidget(labelKey: 'label.about_me.education.msc_eng', pwr: pwr)),
      ],
    ),
  );
}

class _CvSectionEducationWidget extends pw.StatelessWidget {
  _CvSectionEducationWidget({required this.labelKey, required this.pwr});

  final String labelKey;
  final pw.MemoryImage pwr;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    border: pw.Border.all(color: PdfColors.grey300),
    backgroundColor: PdfColors.white,
    child: PfRow(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        PfImagePathWidget(
          image: pwr,
          width: Dimens.dimen50,
          padding: const pw.EdgeInsets.all(Dimens.dimen6),
          horizontalRadius: Dimens.dimen4,
        ),
        PfSizeBox(width: Dimens.dimen16),
        pw.Expanded(
          child: PfColumn(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              PfLabel(
                '$labelKey.institution',
                style: const pw.TextStyle(fontSize: Dimens.dimen10),
                fontWeight: pw.FontWeight.bold,
              ),
              PfSizeBox(height: Dimens.dimen2),
              PfLabel('$labelKey.degree', style: const pw.TextStyle(fontSize: Dimens.dimen10)),
              PfSizeBox(height: Dimens.dimen2),
              PfLabel('$labelKey.major', style: const pw.TextStyle(fontSize: Dimens.dimen8)),
              PfSizeBox(height: Dimens.dimen2),
              PfLabel('$labelKey.period', style: const pw.TextStyle(fontSize: Dimens.dimen8)),
            ],
          ),
        ),
      ],
    ),
  );
}
