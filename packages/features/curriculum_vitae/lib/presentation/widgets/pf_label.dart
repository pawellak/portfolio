import 'package:components_library/components_library_export.dart' show AppConstants, StringTranslateExtension;
import 'package:pdf/pdf.dart' as pw show PdfColor;
import 'package:pdf/widgets.dart' as pw;

class PfLabel extends pw.StatelessWidget {
  PfLabel(
    this.text, {
    this.style,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.textAlign,
    this.decoration,
    this.overflow,
    this.translate = true,
  });

  final String? text;
  final pw.TextStyle? style;
  final pw.FontWeight? fontWeight;
  final pw.PdfColor? color;
  final int? maxLines;
  final pw.TextDecoration? decoration;
  final pw.TextAlign? textAlign;
  final pw.TextOverflow? overflow;
  final bool translate;

  @override
  pw.Widget build(pw.Context context) {
    final mergedStyle = const pw.TextStyle().merge(style);
    final finalStyle = mergedStyle.copyWith(fontWeight: fontWeight, color: color, decoration: decoration);

    return pw.Text(
      (translate ? text?.tr() : text) ?? AppConstants.emptyString,
      style: finalStyle,
      softWrap: true,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
