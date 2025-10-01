import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:pdf/pdf.dart' show PdfColors;
import 'package:pdf/widgets.dart' as pw;

class CvSectionExperience extends pw.StatelessWidget {
  CvSectionExperience();

  @override
  pw.Widget build(pw.Context context) => CvTitleContainer(
    icon: FluentIcons.book_compass_24_regular,
    title: 'label.about_me.experience.title',
    child: PfRow(
      children: [
        pw.Expanded(child: _CvSectionExperienceWidget(labelKey: 'sygnisoft')),
        pw.SizedBox(width: Dimens.dimen12),
        pw.Expanded(child: _CvSectionExperienceWidget(labelKey: 'svantek')),
        pw.SizedBox(width: Dimens.dimen12),
        pw.Expanded(child: _CvSectionExperienceWidget(labelKey: 'falcon_acoustics')),
        pw.SizedBox(width: Dimens.dimen12),
        pw.Expanded(child: _CvSectionExperienceWidget(labelKey: 'ecoplan')),
      ],
    ),
  );
}

class _CvSectionExperienceWidget extends pw.StatelessWidget {
  _CvSectionExperienceWidget({required this.labelKey});

  final String labelKey;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    border: pw.Border.all(color: PdfColors.grey300),
    backgroundColor: PdfColors.white,
    child: _AboutMeSectionExperienceCompanyWidget(labelKey),
  );
}

class _AboutMeSectionExperienceCompanyWidget extends pw.StatelessWidget {
  _AboutMeSectionExperienceCompanyWidget(this.labelKey);

  final String labelKey;

  @override
  pw.Widget build(pw.Context context) {
    final periodStart = 'label.about_me.experience.period.start.$labelKey'.tr();
    final periodEnd = 'label.about_me.experience.period.end.$labelKey'.tr();

    return PfColumn(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        PfLabel(
          'label.about_me.experience.company_name.$labelKey',
          style: const pw.TextStyle(fontSize: Dimens.dimen12),
          fontWeight: pw.FontWeight.bold,
        ),
        PfLabel('label.about_me.experience.position.$labelKey', style: const pw.TextStyle(fontSize: Dimens.dimen9)),
        PfLabel(
          '$periodStart - ${periodEnd.isEmpty ? 'label.date_time.now'.tr() : periodEnd}',
          translate: false,
          style: const pw.TextStyle(fontSize: Dimens.dimen10),
          color: PdfColors.grey700,
        ),
        PfLabel(
          DateFormatter.formatDateTimeToPeriodString(start: periodStart, end: periodEnd),
          translate: false,
          style: const pw.TextStyle(fontSize: Dimens.dimen8),
          color: PdfColors.grey700,
        ),
      ],
    );
  }
}
