// import 'package:components_library/components_library_export.dart';
// import 'package:components_library/resources/dimens.dart';
// import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/pdf/sections/cv_title_container.dart';
// import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
// import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
// import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
// import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// class CvSectionSkills extends pw.StatelessWidget {
//   CvSectionSkills();
//
//   @override
//   pw.Widget build(pw.Context context) => PfColumn(
//     children: [
//       CvTitleContainer(
//         icon: FluentIcons.person_accounts_24_regular,
//         title: 'label.cv.section.skill',
//         child: PfRow(
//           children: [
//             pw.Expanded(child: _CvSectionSkillsWidget('label.cv.section.skill_1')),
//             pw.SizedBox(width: Dimens.dimen6),
//             pw.Expanded(child: _CvSectionSkillsWidget('label.cv.section.skill_2')),
//           ],
//         ),
//       ),
//     ],
//   );
// }
//
// class _CvSectionSkillsWidget extends pw.StatelessWidget {
//   _CvSectionSkillsWidget(this.labelKey);
//
//   final String labelKey;
//
//   @override
//   pw.Widget build(pw.Context context) => PfContainer(
//     backgroundColor: PdfColors.white,
//     height: 30,
//     child: PfLabel(labelKey, style: const pw.TextStyle(fontSize: Dimens.dimen10),textAlign: pw.TextAlign.justify),
//   );
// }
