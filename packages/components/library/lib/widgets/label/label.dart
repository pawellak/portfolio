import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/utilis/app_constants.dart';
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label(
    this.text, { // 1. Renamed from labelKey for better clarity
    super.key,
    this.style,
    this.fontWeight, // 2. Made nullable for more flexible style merging
    this.color,
    this.maxLines,
    this.textAlign,
    this.decoration,
    this.overflow,
    this.translate = true,
  });

  final String? text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final bool translate;

  @override
  Widget build(BuildContext context) {
    final TextStyle baseStyle = context.textTheme.bodyMedium ?? const TextStyle();
    final TextStyle mergedStyle = baseStyle.merge(style);

    return Text(
      (translate ? text?.tr() : text) ?? AppConstants.emptyString,
      style: mergedStyle.copyWith(
        fontWeight: fontWeight,
        color: color ?? context.colorTokens.textPrimary,
        decoration: decoration,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: true,
      semanticsLabel: text,
    );
  }
}
