import 'package:pdf/widgets.dart' as pw;

class PfColumn extends pw.StatelessWidget {
  PfColumn({required this.children, this.crossAxisAlignment,this.mainAxisSize,this.mainAxisAlignment});

  final pw.CrossAxisAlignment? crossAxisAlignment;
  final pw.MainAxisAlignment? mainAxisAlignment;
  final pw.MainAxisSize? mainAxisSize;

  final List<pw.Widget> children;

  @override
  pw.Widget build(pw.Context context) => pw.Column(
    children: children,
    mainAxisAlignment: mainAxisAlignment ?? pw.MainAxisAlignment.center,
    crossAxisAlignment: crossAxisAlignment ?? pw.CrossAxisAlignment.start,
    mainAxisSize: mainAxisSize ?? pw.MainAxisSize.min,
  );
}
