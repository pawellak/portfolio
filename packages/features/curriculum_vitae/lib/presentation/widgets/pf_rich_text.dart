import 'package:components_library/components_library_export.dart' show AppConstants, StringTranslateExtension;
import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:pdf/widgets.dart' as pw;

const _kRegexBold = '<bold>(.*?)</bold>';

class PfRichText extends pw.StatelessWidget {
  PfRichText(this.text);

  final String text;

  @override
  pw.Widget build(pw.Context context) => pw.RichText(
    textAlign: pw.TextAlign.justify,
    text: pw.TextSpan(style: const pw.TextStyle(fontSize: Dimens.dimen11), children: _getRichTextSpans()),
  );

  List<pw.InlineSpan> _getRichTextSpans() {
    final List<pw.InlineSpan> spans = [];

    String remainingText = text.tr();

    while (remainingText.isNotEmpty) {
      final match = RegExp(_kRegexBold).firstMatch(remainingText);

      if (match == null) {
        spans.add(pw.TextSpan(text: remainingText));
        break; // Exit the loop
      }

      final textBefore = remainingText.substring(0, match.start);
      if (textBefore.isNotEmpty) {
        spans.add(pw.TextSpan(text: textBefore));
      }

      final boldText = match.group(1) ?? AppConstants.emptyString;
      spans.add(pw.TextSpan(text: boldText, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)));

      remainingText = remainingText.substring(match.end);
    }
    return spans;
  }
}
