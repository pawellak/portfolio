import 'package:components_library/utils/extensions/extensions_export.dart';
import 'package:components_library/widgets/launcher/launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ClHtmlLabel extends StatelessWidget {
  const ClHtmlLabel({
    super.key,
    required this.data,
    this.onLinkTap,
    this.style,
    this.isOneLine = false,
    this.justify = false,
  });

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
      textStyle: style ?? context.textTheme.bodyMedium?.copyWith(color: context.colorTokens.textPrimary),
      onTapUrl: (url) async {
        if (url.isNotEmpty) {
          await const Launcher().launchLink(url);
        } else {
          onLinkTap?.call();
        }
        return true;
      },
      customStylesBuilder: (element) => {'color': _buildColor(context.colorTokens.textPrimary)},
    );
  }

  String _buildColor(Color color) {
    final int32 =
        _floatToInt8(color.a) << 24 |
        _floatToInt8(color.r) << 16 |
        _floatToInt8(color.g) << 8 |
        _floatToInt8(color.b) << 0;

    return '0x${int32.toRadixString(16)}';
  }

  int _floatToInt8(double x) => (x * 255.0).round() & 0xff;
}
