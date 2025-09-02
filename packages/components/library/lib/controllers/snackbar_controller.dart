import 'package:components_library/resources/dimens.dart';
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:components_library/widgets/snackbar/cl_snackbar_widget.dart';
import 'package:flutter/material.dart';

abstract class SnackBarController {
  const SnackBarController();

  static Future<void> showSuccessSnackBar(BuildContext context, String message) async {
    await _showSnackBar(
      context,
      message,
      context.colorTokens.snackBarSuccessBackgroundColor,
      context.colorTokens.snackBarSuccessTextColor,
    );
  }

   static Future<void> showErrorSnackBar(BuildContext context, String message) async {
    await _showSnackBar(
      context,
      message,
      context.colorTokens.snackBarErrorBackgroundColor,
      context.colorTokens.snackBarErrorTextColor,
    );
  }

  static Future<void> _showSnackBar(
    BuildContext context,
    String message,
    Color backgroundColor,
    Color textColor,
  ) async {
    if (!context.mounted) {
      return;
    }
    await ClSnackBarWidget(
      widgetMargin: Dimens.dimen16,
      backgroundColor: backgroundColor,
      textStyle: context.textTheme.bodyMedium,
      iconColor: context.colorTokens.snackBarDefaultIconColor,
      textColor: textColor,
      message: message,
    ).show(context);
  }
}
