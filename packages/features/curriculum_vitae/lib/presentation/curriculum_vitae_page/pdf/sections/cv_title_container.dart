import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_icon.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_sizebox.dart';
import 'package:flutter/material.dart' show IconData;
import 'package:pdf/pdf.dart' as pw;
import 'package:pdf/widgets.dart' as pw;

const _kMaxDividerWidth = 450.0;

class CvTitleContainer extends pw.StatelessWidget {
  CvTitleContainer({required this.icon, required this.title, required this.child, this.margin = Dimens.dimen10});

  final IconData icon;
  final String title;
  final pw.Widget child;
  final double margin;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    margin: pw.EdgeInsets.only(top: margin),
    padding: const pw.EdgeInsets.all(Dimens.dimen7),
    child: PfColumn(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        _AboutMeTitleWidget(title: title, icon: icon),
        PfContainer(
          width: _kMaxDividerWidth,
          height: Dimens.dimen1,
          backgroundColor: pw.PdfColors.grey500,
          borderRadius: pw.BorderRadius.zero,
          border: pw.Border.all(width: Dimens.dimen0, color: pw.PdfColors.grey50),
          margin: const pw.EdgeInsets.only(
            left: Dimens.dimen4,
            right: Dimens.dimen4,
            bottom: Dimens.dimen8,
            top: Dimens.dimen4,
          ),
        ),
        child,
      ],
    ),
  );
}

class _AboutMeTitleWidget extends pw.StatelessWidget {
  _AboutMeTitleWidget({required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  pw.Widget build(pw.Context context) => PfRow(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      pw.Padding(
        padding: const pw.EdgeInsets.only(left: Dimens.dimen12),
        child: PfIcon(icon, color: pw.PdfColors.grey800, size: Dimens.dimen20),
      ),
      PfSizeBox(width: Dimens.dimen12),
      pw.Expanded(child: PfLabel(title, style: pw.TextStyle(fontSize: Dimens.dimen14, fontWeight: pw.FontWeight.bold))),
    ],
  );
}
