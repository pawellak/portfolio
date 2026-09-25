import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/pdf.dart' show PdfPageFormat;
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart' show PdfGoogleFonts;

const _kFonts = 'assets/fonts/FluentSystemIcons-Regular.ttf';

class PdfGenerator {
  static pw.PageTheme? _cachedTheme;

  static Future<pw.PageTheme> _getTheme() async {
    if (_cachedTheme != null) {
      return _getCachedTheme;
    }
    _cachedTheme = pw.PageTheme(
      margin: const pw.EdgeInsets.symmetric(vertical: Dimens.dimen12, horizontal: Dimens.dimen12),
      pageFormat: PdfPageFormat.a4,
      theme: pw.ThemeData.withFont(
        base: await PdfGoogleFonts.manropeRegular(),
        bold: await PdfGoogleFonts.manropeSemiBold(),
        icons: pw.TtfFont(await rootBundle.load(_kFonts)),
      ),
    );
    return _getCachedTheme;
  }

  static pw.PageTheme get _getCachedTheme => _cachedTheme ?? const pw.PageTheme();

  static Future<pw.Document> addBodyToDocument({
    required List<pw.Widget> pageList,
    required pw.Document document,
  }) async => document..addPage(pw.MultiPage(pageTheme: await _getTheme(), build: (context) => pageList));
}
