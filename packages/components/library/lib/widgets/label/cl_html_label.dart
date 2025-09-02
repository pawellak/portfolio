import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ClHtmlLabel extends StatelessWidget {
  ClHtmlLabel({required this.data, this.onLinkTap, this.style, this.isOneLine = false, this.justify = false})
    : super(key: UniqueKey());

  final String data;
  final VoidCallback? onLinkTap;
  final TextStyle? style;
  final bool isOneLine;
  final bool justify;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const SizedBox();
    }

    return HtmlWidget(
      onErrorBuilder: (context, element, error) => const SizedBox(),
      data,
      customStylesBuilder: (element) {
        switch (element.localName) {
          case 'h1':
            return {'color': _colorToHex(context.colorTokens.textH1)};
          case 'h2':
            return {'color': _colorToHex(context.colorTokens.textH2)};
          case 'h3':
            return {'color': _colorToHex(context.colorTokens.textH3)};
          case 'h4':
            return {'color': _colorToHex(context.colorTokens.textH4)};
        }
        return {'color': _colorToHex(context.colorTokens.textPrimary)};
      },
    );
  }

  String _colorToHex(Color color) => '#${color.toARGB32().toRadixString(16).substring(2, 8)}';
}
