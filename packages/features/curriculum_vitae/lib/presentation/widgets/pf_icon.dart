import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart' show IconData;
import 'package:pdf/pdf.dart' as pw;
import 'package:pdf/widgets.dart' as pw;

class PfIcon extends pw.StatelessWidget {
  PfIcon(this.icon, {this.color, this.size = Dimens.dimen16});

  final IconData icon;
  final pw.PdfColor? color;
  final double size;

  @override
  pw.Widget build(pw.Context context) => pw.Icon(pw.IconData(icon.codePoint), color: color, size: size);
}
