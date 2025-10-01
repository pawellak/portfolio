import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClSettingsButton extends StatelessWidget {
  const ClSettingsButton({
    super.key,
    this.onPressed,
    required this.labelKey,
    required this.icon,
    this.suffixWidget,
    this.padding,
    this.suffixArrowVisible = true,
  });

  final VoidCallback? onPressed;
  final String labelKey;
  final IconData icon;
  final Widget? suffixWidget;
  final bool suffixArrowVisible;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onPressed,
    child: ClContainer(
      padding: padding ?? const EdgeInsets.all(Dimens.dimen8),
      child: Row(
        children: [
          ClIcon(path: icon, isSemantic: false).addPaddingAll(Dimens.dimen8),
          const SizedBox(width: Dimens.dimen16),
          Expanded(
            child: Label(
              labelKey,
              style: context.textTheme.bodyMedium,
              fontWeight: FontWeight.bold,
              color: context.colorTokens.moreMenuColorText,
            ),
          ),
          const SizedBox(width: Dimens.dimen16),
          _buildSuffixWidget(context),
          const SizedBox(width: Dimens.dimen8),
        ],
      ),
    ),
  );

  Widget _buildSuffixWidget(BuildContext context) =>
      suffixWidget ??
      (suffixArrowVisible
          ? ClIcon(isSemantic: false, path: FontAwesomeIcons.angleRight, color: context.colorTokens.moreMenuColor)
          : const SizedBox());
}
