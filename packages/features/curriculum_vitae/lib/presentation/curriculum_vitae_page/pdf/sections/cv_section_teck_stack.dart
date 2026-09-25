import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class CvSectionTechStack extends pw.StatelessWidget {
  CvSectionTechStack();

  @override
  pw.Widget build(pw.Context context) => PfColumn(
    children: [
      CvTitleContainer(
        icon: FluentIcons.person_accounts_24_regular,
        title: 'label.cv.section.tech_stack',
        child: PfRow(
          children: [
            pw.Expanded(  child: _CvSectionTechStackWidget('label.cv.section.tech_stack_1'),flex: 4),
            pw.SizedBox(width: Dimens.dimen6),
            pw.Expanded(child: _CvSectionTechStackWidget('label.cv.section.tech_stack_2'),flex: 3),
            pw.SizedBox(width: Dimens.dimen6),
            pw.Expanded(child: _CvSectionTechStackWidget('label.cv.section.tech_stack_3'),flex: 3),
          ],
        ),
      ),
    ],
  );
}

class _CvSectionTechStackWidget extends pw.StatelessWidget {
  _CvSectionTechStackWidget(this.labelKey);

  final String labelKey;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    backgroundColor: PdfColors.white,
    height: Dimens.dimen100,
    child: PfLabel(labelKey, style: const pw.TextStyle(fontSize: Dimens.dimen10 ), textAlign: pw.TextAlign.justify),
  );
}
