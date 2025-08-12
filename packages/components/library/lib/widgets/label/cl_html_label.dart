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

    String htmlData = data;

    if (isOneLine) {
      htmlData = '<p class="single-line">$data</p>';
    }

    if (justify) {
      htmlData = '<p class="text-align">$data</p>';
    }
    // htmlData = htmlData.replaceAll('<li', '<li style="margin-left: 0px; padding-bottom: 4px; "');
    // htmlData =
    //     htmlData.replaceAll('<ul', '<ul style="margin-left: 0px; padding-left: 0px;list-style-position: inside;"');

    return HtmlWidget(
      onErrorBuilder: (context, element, error) => const SizedBox(),
      htmlData,
      textStyle: style ?? context.textTheme.bodyMedium?.copyWith(color: context.colorTokens.textPrimary),
      onTapUrl: (url) async {
        if (url.isNotEmpty) {
          await const Launcher().launchLink(url);
        } else {
          onLinkTap?.call();
        }
        return true;
      },
      // customStylesBuilder: (element) {
      //   if (element.classes.contains('single-line')) {
      //     return {
      //       'overflow': 'hidden',
      //       'text-overflow': 'ellipsis',
      //       'white-space': 'nowrap',
      //     };
      //   }
      //
      //   if (element.classes.contains('text-align')) {
      //     return {
      //       'text-align': 'justify',
      //     };
      //   }
      //
      //   switch (element.localName) {
      //     case 'li':
      //       return {
      //         'margin-left': '4px',
      //         'padding-bottom': '4px',
      //       };
      //     case 'ul':
      //       return {
      //         'padding-left': '10px',
      //       };
      //     case 'a':
      //       return {
      //         'color': _buildColor(context.colorTokens.buttonGhostDefaultColor),
      //       };
      //   }
      //
      //   return null;
      // },
    );
  }

  // String _buildColor(Color color) {
  //   final int32 = _floatToInt8(color.a) << 24 |
  //   _floatToInt8(color.r) << 16 |
  //   _floatToInt8(color.g) << 8 |
  //   _floatToInt8(color.b) << 0;
  //
  //   return '0x${int32.toRadixString(16)}';
  // }

  // int _floatToInt8(double x) => (x * 255.0).round() & 0xff;
}
