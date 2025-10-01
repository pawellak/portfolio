import 'package:pdf/widgets.dart' as pw;

class PfSizeBox extends pw.StatelessWidget {
  PfSizeBox({this.child, this.width, this.height});

  final double? width;
  final double? height;

  final pw.Widget? child;

  @override
  pw.Widget build(pw.Context context) => pw.SizedBox(child: child, height: height, width: width);
}
