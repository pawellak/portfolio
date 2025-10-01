import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';

import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class CvSectionSkills extends pw.StatelessWidget {
  CvSectionSkills();

  @override
  pw.Widget build(pw.Context context) => CvTitleContainer(
    icon: FluentIcons.person_accounts_24_regular,
    title: 'label.cv.section.skills',
    child: PfRow(
      children: [
        pw.Expanded(child: _SkillWidget('label.cv.section.skill_1')),
        pw.SizedBox(width: Dimens.dimen12),
        pw.Expanded(child: _SkillWidget('label.cv.section.skill_2')),
        pw.SizedBox(width: Dimens.dimen12),
        pw.Expanded(child: _SkillWidget('label.cv.section.skill_3')),
        pw.SizedBox(width: Dimens.dimen12),
        pw.Expanded(child: _SkillWidget('label.cv.section.skill_4')),
      ],
    ),
  );
}

class _SkillWidget extends pw.StatelessWidget {
  _SkillWidget(this.labelKey);

  final String labelKey;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    backgroundColor: PdfColors.white,
    height: Dimens.dimen126,
    child: PfLabel(labelKey, style: const pw.TextStyle(fontSize: Dimens.dimen10)),
  );
}
