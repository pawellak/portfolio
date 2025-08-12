import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/utilis/app_constants.dart';
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label(
    this.labelKey, {
    super.key,
    this.style,
    this.fontWeight = FontWeight.w500,
    this.color,
    this.maxLines,
    this.textAlign,
    this.decoration,
    this.overflow,
    this.translate = true,
  });

  final String? labelKey;
  final TextStyle? style;
  final FontWeight fontWeight;
  final Color? color;
  final int? maxLines;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final bool translate;

  @override
  Widget build(BuildContext context) => translate ? _buildTranslateTextWidget(context) : _buildTextWidget(context);

  Text _buildTextWidget(BuildContext context) => Text(
        semanticsLabel: labelKey,
        labelKey ?? AppConstants.emptyString,
        softWrap: true,
        textAlign: textAlign,
        style: (style ?? context.textTheme.bodyMedium)?.copyWith(
          fontWeight: fontWeight,
          color: color ?? context.colorTokens.textPrimary,
          decoration: decoration,
        ),
        overflow: overflow,
        maxLines: maxLines,
      );

  Text _buildTranslateTextWidget(BuildContext context) {
    final translation = labelKey?.tr();

    return Text(
      semanticsLabel: translation,
      translation ?? AppConstants.emptyString,
      softWrap: true,
      textAlign: textAlign,
      style: (style ?? context.textTheme.bodyMedium)?.copyWith(
        fontWeight: fontWeight,
        color: color ?? context.colorTokens.textPrimary,
        decoration: decoration,
      ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
