import 'package:components_core/utilis/app_constants.dart';
import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';

class ClElevatedButton extends StatelessWidget {
  const ClElevatedButton({super.key, this.label, required this.onPressed, required this.icon, this.width, this.child});

  final VoidCallback? onPressed;
  final IconData icon;
  final String? label;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      FaIcon(icon, color: context.colorTokens.iconPrimaryColor),
      const SizedBox(width: Dimens.dimen16),
      Expanded(
        child: SizedBox(
          height: Dimens.dimen50,
          width: width ?? double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
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
        ),
      ),
    ],
  ).addSymmetricPadding(vertical: Dimens.dimen8);
}
