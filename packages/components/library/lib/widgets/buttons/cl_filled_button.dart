import 'package:components_core/utilis/app_constants.dart';
import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';

class ClFilledButton extends StatelessWidget {
  const ClFilledButton({super.key, this.label, required this.onPressed, this.width, this.child});

  final VoidCallback? onPressed;
  final String? label;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: Dimens.dimen50,
    width: width ?? double.infinity,
    child: FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: context.colorTokens.buttonPrimaryDefaultBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.dimen12)),
      ),
      onPressed: onPressed,
      child:
          child ??
          Label(
            label ?? AppConstants.emptyString,
            style: context.textTheme.bodyLarge,
            color: context.colorTokens.buttonPrimaryTextColor,
            fontWeight: FontWeight.bold,
          ),
    ),
  );
}
