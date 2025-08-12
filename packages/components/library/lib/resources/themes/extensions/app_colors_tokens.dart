import 'package:flutter/material.dart';

@immutable
abstract class AppColorsTokens extends ThemeExtension<AppColorsTokens> {
  const AppColorsTokens();

  abstract final Color checkBoxSelectedColor;
  abstract final Color checkboxEnabledBackgroundColor;
  abstract final Color checkboxBorderColor;
  abstract final Color checkboxTextColor;

  abstract final Color surfaceContainerIconBackground;

  ///Navigation
  abstract final Color navigationProgressBarPrimary;
  abstract final Color navigationProgressBarBackground;
  abstract final Color navigationTextColor;

  ///Badge
  abstract final Color lightBadgeBackgroundColor;
  abstract final Color lightBadgeTextColor;

  abstract final Color loadingBackgroundColor;
  abstract final Color surfaceContainerIconPrimary;
  abstract final Color navigationAdditionalTextColor;

  ///Shimmer
  abstract final Color shimmerBaseColor;
  abstract final Color shimmerHighlightColor;

  abstract final Color scaffoldBackgroundColor;

  ///Bottom Navigation
  abstract final Color bottomNavigationBackgroundColor;
  abstract final Color bottomNavigationBorderColor;
  abstract final Color bottomNavigationSelectedColor;
  abstract final Color bottomNavigationDeselectedColor;

  abstract final Color refreshIndicatorColor;

  ///Runs Dots color
  abstract final Color runsDotsSelectedColor;
  abstract final Color runsDotsDeselectedColor;

  abstract final Color moreMenuColor;
  abstract final Color moreMenuColorText;

  abstract final Color iconPrimaryColor;
  abstract final Color iconSecondaryColor;

  ///Splash Screen
  abstract final Color splashScreenBackgroundColor;

  ///Text
  abstract final Color textPrimary;
  abstract final Color textSecondary;
  abstract final Color textBrand;
  abstract final Color textWhite;

  ///Button Ghost
  abstract final Color buttonGhostDefaultColor;
  abstract final Color buttonGhostPressedColor;

  ///Button Primary
  abstract final Color buttonPrimaryPressedBackgroundColor;
  abstract final Color buttonPrimaryTextColor;
  abstract final Color buttonPrimaryDefaultBackgroundColor;
  abstract final Color buttonPrimaryDisabledBackgroundColor;
  abstract final Color buttonPrimaryDisabledTextColor;

  ///Button Secondary
  abstract final Color buttonSecondaryBackgroundColor;
  abstract final Color buttonSecondaryPressedBackgroundColor;
  abstract final Color buttonSecondaryTextColor;
  abstract final Color buttonSecondaryStrokeColor;

  ///Text Field
  abstract final Color textFieldBackgroundColor;
  abstract final Color textFieldSecondaryBackgroundColor;
  abstract final Color textFieldBorderPressedColor;
  abstract final Color textFieldTextColor;
  abstract final Color textFieldTextInputColor;
  abstract final Color disabledFieldTextColor;
  abstract final Color textFieldIconColor;
  abstract final Color successFieldIconColor;
  abstract final Color errorFieldTextColor;
  abstract final Color errorFieldBorderColor;
  abstract final Color textFieldSearchBackgroundColor;
  abstract final Color textFieldDisabledBackgroundColor;

  ///Snackbar
  abstract final Color snackBarDefaultBackgroundColor;
  abstract final Color snackBarDefaultTextColor;
  abstract final Color snackBarDefaultIconColor;
  abstract final Color snackBarDefaultStrokeColor;
  abstract final Color snackBarWarningBackgroundColor;
  abstract final Color snackBarWarningTextColor;
  abstract final Color snackBarErrorBackgroundColor;
  abstract final Color snackBarErrorTextColor;
  abstract final Color snackBarSuccessBackgroundColor;
  abstract final Color snackBarSuccessTextColor;

  ///Surface
  abstract final Color surfaceContainerPrimary;
  abstract final Color surfaceContainerSecondary;
  abstract final Color overlayDarkBackgroundColor;

  abstract final Color registrationAvailableSuccessColor;

  abstract final Color registrationAvailableNegativeColor;
  abstract final Color shadowColor;

  abstract final Color doneActionKeyboardBackgroundColor;
  abstract final Color doneActionKeyboardTextColor;

  abstract final Color dividerColor;
}
