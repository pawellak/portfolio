import 'package:pdf/widgets.dart' as pw;

class PfRow extends pw.StatelessWidget {
  PfRow({required this.children, this.crossAxisAlignment});

  final pw.CrossAxisAlignment? crossAxisAlignment;

  final List<pw.Widget> children;

  @override
  pw.Widget build(pw.Context context) =>
      pw.Row(children: children, crossAxisAlignment: crossAxisAlignment ?? pw.CrossAxisAlignment.start);
}
