import 'package:components_library/resources/dimens.dart';
import 'package:pdf/pdf.dart' as pw;
import 'package:pdf/widgets.dart' as pw;

class PfContainer extends pw.StatelessWidget {
  PfContainer({
    this.child,
    this.padding,
    this.backgroundColor,
    this.margin,
    this.borderRadius,
    this.boxShadow,
    this.width,
    this.border,
    this.height,
    this.constraints,
  });

  final pw.Widget? child;
  final double? width;
  final double? height;
  final pw.EdgeInsets? padding;
  final pw.EdgeInsets? margin;
  final pw.PdfColor? backgroundColor;
  final List<pw.BoxShadow>? boxShadow;
  final pw.BorderRadius? borderRadius;
  final pw.BoxBorder? border;
  final pw.BoxConstraints? constraints;

  @override
  pw.Widget build(pw.Context context) => pw.Container(
    constraints: constraints,
    width: width,
    height: height,
    padding: padding ?? const pw.EdgeInsets.all(Dimens.dimen8),
    margin: margin,
    decoration: pw.BoxDecoration(
      border: border ?? pw.Border.all(color: pw.PdfColors.blue100),
      boxShadow: boxShadow,
      color: backgroundColor ?? pw.PdfColors.blue50,
      borderRadius: borderRadius ?? pw.BorderRadius.circular(Dimens.dimen8),
    ),
    child: child,
  );
}
