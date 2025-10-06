import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:pdf/pdf.dart' as pw;
import 'package:pdf/widgets.dart' as pw;

class PfImagePathWidget extends pw.StatelessWidget {
  PfImagePathWidget({
    required this.image,
    this.width,
    this.height,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.fit = pw.BoxFit.scaleDown,
    this.constraints,
    this.horizontalRadius = Dimens.dimen8,
    this.verticalRadius = Dimens.dimen8,
  });

  final pw.MemoryImage image;
  final double? width;
  final double? height;
  final double horizontalRadius;
  final double verticalRadius;
  final pw.PdfColor? backgroundColor;
  final pw.EdgeInsets? padding;
  final pw.EdgeInsets? margin;
  final pw.BoxFit fit;
  final pw.BoxConstraints? constraints;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    border: pw.Border.all(color: pw.PdfColors.grey300),
    constraints: constraints,
    margin: margin,
    width: width,
    height: height,
    padding: padding ?? pw.EdgeInsets.zero,
    backgroundColor: backgroundColor ?? pw.PdfColors.grey200,
    child: pw.ClipRRect(child: pw.Image(image), horizontalRadius: horizontalRadius, verticalRadius: verticalRadius),
  );
}
