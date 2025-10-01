import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';

import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
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
      padding: const pw.EdgeInsets.all(Dimens.dimen8),
      margin: const pw.EdgeInsets.only(top: Dimens.dimen4,  bottom: Dimens.dimen4),
      child: PfLabel(
        'label.about_me.description_short',
        style: const pw.TextStyle(fontSize: Dimens.dimen10),
        textAlign: pw.TextAlign.justify,
      ),
    ),
  );
}
