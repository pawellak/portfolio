import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';

class ClRadioListTile<T> extends StatelessWidget {
  const ClRadioListTile({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    this.translate = true,
    this.onChanged,
    this.suffixWidget,
    this.columnWidget,
    this.titleColor,
    this.padding,
  });

  final String title;
  final Color? titleColor;
  final bool translate;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final Widget? suffixWidget;
  final Widget? columnWidget;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return RadioListTile.adaptive(
    contentPadding: padding,
    title: _buildWidget(context),
    value: value,




    groupValue: groupValue,
    onChanged: onChanged,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.dimen12)),
    tileColor: context.colorTokens.surfaceContainerPrimary,
    selectedTileColor: context.colorTokens.surfaceContainerPrimary,
    fillColor: WidgetStateProperty.resolveWith<Color>((states) => context.colorTokens.checkboxEnabledBackgroundColor),
  );
  }

  Widget _buildWidget(BuildContext context) {
    if (suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Expanded(child: _buildTitle(context)), suffixWidget ?? const SizedBox()],
      );
    } else if (columnWidget != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [columnWidget ?? const SizedBox(), _buildTitle(context)],
      );
    } else {
      return _buildTitle(context);
    }
  }

  Label _buildTitle(BuildContext context) => Label(
    title,
    translate: translate,
    style: context.textTheme.bodyMedium,
    fontWeight: FontWeight.bold,
    color: titleColor ?? context.colorTokens.textPrimary,
  );
}
