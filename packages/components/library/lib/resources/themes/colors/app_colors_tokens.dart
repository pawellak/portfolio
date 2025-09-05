import 'package:flutter/material.dart';

@immutable
abstract class AppColorsTokens extends ThemeExtension<AppColorsTokens> {
  const AppColorsTokens();

  //Project list Page
  abstract final Color projectListBackgroundColor;

  //Checkbox
  abstract final Color checkboxIconColor;

  //Contact
  abstract final Color contactBackgroundColor;

  //Navigation
  abstract final Color navigationProgressBarPrimary;
  abstract final Color navigationProgressBarBackground;
  abstract final Color navigationTextColor;
  abstract final Color navigationAdditionalTextColor;
  abstract final Color topNavigationSecondaryBackgroundColor;
  abstract final Color topNavigationPrimaryBackgroundColor;

  //Bottom Navigation
  abstract final Color bottomNavigationPrimaryColor;
  abstract final Color bottomNavigationSecondaryColor;

  //More Navigation
  abstract final Color moreMenuColor;
  abstract final Color moreMenuColorText;

  //Loading
  abstract final Color loadingBackgroundColor;
  abstract final Color shimmerBaseColor;
  abstract final Color shimmerHighlightColor;

  //Icons
  abstract final Color iconPrimaryColor;
  abstract final Color iconBackgroundColor;
  abstract final Color flagBackgroundColor;

  //Text
  abstract final Color textPrimary;
  abstract final Color textSecondary;
  abstract final Color textH1;
  abstract final Color textH2;
  abstract final Color textH3;
  abstract final Color textH4;

  //Button
  abstract final Color buttonPrimaryTextColor;
  abstract final Color buttonPrimaryDefaultBackgroundColor;

  abstract final Color iconButtonIconColor;
  abstract final Color iconButtonBackgroundColor;

  //Snackbar
  abstract final Color snackBarDefaultIconColor;
  abstract final Color snackBarErrorBackgroundColor;
  abstract final Color snackBarErrorTextColor;
  abstract final Color snackBarSuccessBackgroundColor;
  abstract final Color snackBarSuccessTextColor;

  //Surface
  abstract final Color surfaceContainerPrimary;
  abstract final Color containerBorderColor;
  abstract final Color overlayDarkBackgroundColor;

  //Divider
  abstract final Color dividerColor;
  abstract final Color dividerSecondaryColor;
}
