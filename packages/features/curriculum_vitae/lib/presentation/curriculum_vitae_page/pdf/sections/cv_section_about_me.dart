import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_rich_text.dart';
import 'package:pdf/pdf.dart' show PdfColors;
import 'package:pdf/widgets.dart' as pw;

class CvSectionAboutMe extends pw.StatelessWidget {
  CvSectionAboutMe();

  @override
  pw.Widget build(pw.Context context) => CvTitleContainer(
    icon: FluentIcons.person_16_regular,
    title: 'label.cv.section.about_me',
    child: PfContainer(
      border: pw.Border.all(color: PdfColors.grey300),
      backgroundColor: PdfColors.white,
      padding: const pw.EdgeInsets.all(Dimens.dimen12),
      child: pw.Column(
        children: [
          for (final label in descriptionLabels) ...[PfRichText(label), pw.SizedBox(height: Dimens.dimen4)],
        ],
      ),
    ),
  );

  final List<String> descriptionLabels = [
    'label.about_me.description_short_1',
    'label.about_me.description_short_2',
    'label.about_me.description_short_3',
    'label.about_me.description_short_4',
    'label.about_me.description_short_5',
  ];
}
