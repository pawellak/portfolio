import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_image_path_widget.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart' show PfRow;
import 'package:feature_curriculum_vitae/presentation/widgets/pf_sizebox.dart';
import 'package:pdf/pdf.dart' as pw;
import 'package:pdf/widgets.dart' as pw;

class CvSectionSocial extends pw.StatelessWidget {
  CvSectionSocial({required this.github, required this.linked, required this.portfolio});

  final pw.MemoryImage github;
  final pw.MemoryImage linked;
  final pw.MemoryImage portfolio;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    height: Dimens.dimen126,
    margin: const pw.EdgeInsets.only(left: Dimens.dimen12),
    child: PfColumn(
      children: [
        _CvSectionSocialWidget(title: 'Portfolio:', description: 'pawellak.github.io', icon: portfolio),
        _CvSectionSocialWidget(title: 'Github:', description: 'github.com/pawellak', icon: github),
        _CvSectionSocialWidget(title: 'LinkedIn:', description: 'linkedin.com/in/pawellak93', icon: linked),
      ],
    ),
  );
}

class _CvSectionSocialWidget extends pw.StatelessWidget {
  _CvSectionSocialWidget({required this.title, required this.description, required this.icon});

  final String title;
  final String description;
  final pw.MemoryImage icon;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    border: pw.Border.all(color: pw.PdfColors.grey300),
    backgroundColor: pw.PdfColors.white,
    margin: const pw.EdgeInsets.all(Dimens.dimen4),
    padding: const pw.EdgeInsets.symmetric(vertical: Dimens.dimen6, horizontal: Dimens.dimen4),
    child: PfRow(
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        PfSizeBox(width: Dimens.dimen4),
        PfImagePathWidget(image: icon, width: Dimens.dimen16, horizontalRadius: Dimens.dimen1,verticalRadius: Dimens.dimen1),
        PfSizeBox(width: Dimens.dimen4),
        PfLabel(title, translate: false, fontWeight: pw.FontWeight.bold, style: const pw.TextStyle(fontSize: Dimens.dimen10)),
        pw.Expanded(
          child: PfLabel(
            description,
            color: pw.PdfColors.grey800,
            textAlign: pw.TextAlign.end,
            translate: false,
            style: const pw.TextStyle(fontSize: Dimens.dimen10),
          ),
        ),
        PfSizeBox(width: Dimens.dimen4),
      ],
    ),
  );
}
