import 'package:components_core/utilis/app_constants.dart' show AppConstants;
import 'package:components_library/components_library_export.dart' show FlexSide, Label, ThemeExtensions;
import 'package:components_library/utils/enums/axis_type.dart';
import 'package:flutter/material.dart'
    show BuildContext, CrossAxisAlignment, Flexible, FontWeight, Row, StatelessWidget, TextOverflow, TextStyle, Widget;

class ClKeyValueLabel extends StatelessWidget {
  const ClKeyValueLabel({
    super.key,
    required this.keyLabel,
    required this.valueLabel,
    this.keyStyle,
    this.maxValueLines,
    this.valueStyle,
    this.axisType,
    this.keyTranslate = true,
    this.valueTranslate = true,
    this.flexSide = FlexSide.all,
    this.maxLines,
  });

  final String keyLabel;
  final bool keyTranslate;
  final bool valueTranslate;
  final String? valueLabel;
  final int? maxLines;
  final int? maxValueLines;
  final TextStyle? keyStyle;
  final TextStyle? valueStyle;
  final AxisType? axisType;
  final FlexSide flexSide;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [_buildKeyLabel(context), Flexible(child: _buildValueLabel(context))],
  );

  Widget _buildKeyLabel(BuildContext context) => Label(
    translate: keyTranslate,
    overflow: TextOverflow.ellipsis,
    keyLabel,
    maxLines: maxLines ?? (flexSide == FlexSide.right ? 1 : null),
    style: _getKeyLabelStyle(context),
    color: keyStyle?.color ?? context.colorTokens.textSecondary,
    fontWeight: keyStyle?.fontWeight ?? FontWeight.normal,
  );

  Widget _buildValueLabel(BuildContext context) => Label(
    translate: valueTranslate,
    valueLabel ?? AppConstants.emptyString,
    overflow: TextOverflow.ellipsis,
    maxLines: maxValueLines ?? (flexSide == FlexSide.left ? 1 : null),
    style: _getValueLabelStyle(context),
    color: valueStyle?.color ?? context.colorTokens.textPrimary,
    fontWeight: valueStyle?.fontWeight ?? FontWeight.bold,
  );

  TextStyle? _getKeyLabelStyle(BuildContext context) => keyStyle ?? context.textTheme.bodyMedium;

  TextStyle? _getValueLabelStyle(BuildContext context) => valueStyle ?? context.textTheme.bodyMedium;
}
