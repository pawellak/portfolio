import 'package:components_library/resources/app_colors.dart';
import 'package:components_library/resources/themes/extensions/app_colors_tokens.dart';
import 'package:flutter/material.dart';

class AppColorsTokensLight extends AppColorsTokens {
  const AppColorsTokensLight();

  @override
  Color get topNavigationSecondaryBackgroundColor => AppColors.cBlack;

  @override
  Color get topNavigationPrimaryBackgroundColor => AppColors.cWhite;

  @override
  Color get refreshIndicatorColor => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  @override
  Color get checkBoxSelectedColor => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get checkboxBorderColor => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get checkboxEnabledBackgroundColor => AppColors.cPrimary;

  ///Bottom Navigation
  @override
  Color get bottomNavigationPrimaryColor => AppColors.cBlack;

  @override
  Color get bottomNavigationSecondaryColor => AppColors.cWhite;

  @override
  Color get navigationProgressBarBackground => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get navigationProgressBarPrimary => AppColors.cPrimary[900] ?? AppColors.cPrimary;

  @override
  Color get navigationTextColor => AppColors.cBlack;

  @override
  Color get checkboxTextColor => AppColors.cPrimary;

  @override
  Color get scaffoldBackgroundColor => AppColors.cPrimary[50] ?? AppColors.cPrimary;

  @override
  Color get runsDotsDeselectedColor => AppColors.cGray[700] ?? AppColors.cBlack;

  @override
  Color get runsDotsSelectedColor => AppColors.cPrimary;

  @override
  Color get moreMenuColor => AppColors.cBlack;

  @override
  Color get moreMenuColorText => AppColors.cPrimary;

  @override
  Color get splashScreenBackgroundColor => AppColors.cPrimary;

  //Badge
  @override
  Color get lightBadgeBackgroundColor => AppColors.cSecondary[300] ?? AppColors.cSecondary;

  @override
  Color get lightBadgeTextColor => AppColors.cPrimary[300] ?? AppColors.cPrimary;

  //Text
  @override
  Color get textBrand => AppColors.cPrimary[300] ?? AppColors.cPrimary;

  @override
  Color get textPrimary => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get textSecondary => AppColors.cGray[500] ?? AppColors.cGray;

  @override
  Color get textWhite => AppColors.cWhite;

  //Navigation
  @override
  Color get navigationAdditionalTextColor => AppColors.cGray[500] ?? AppColors.cGray;

  @override
  Color get surfaceContainerIconBackground => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get surfaceContainerIconPrimary => AppColors.cPrimary[300] ?? AppColors.cPrimary;

  //Button Ghost
  @override
  Color get buttonGhostDefaultColor => AppColors.cPrimary[300] ?? AppColors.cPrimary;

  @override
  Color get buttonGhostPressedColor => AppColors.cPrimary[400] ?? AppColors.cPrimary;

  //Button Primary
  @override
  Color get buttonPrimaryPressedBackgroundColor => AppColors.cPrimary[400] ?? AppColors.cPrimary;

  @override
  Color get buttonPrimaryTextColor => AppColors.cWhite;

  @override
  Color get buttonPrimaryDefaultBackgroundColor => AppColors.cPrimary;

  @override
  Color get buttonPrimaryDisabledBackgroundColor => AppColors.cPrimary[50] ?? AppColors.cGray;

  @override
  Color get buttonPrimaryDisabledTextColor => AppColors.cGray[400] ?? AppColors.cGray;

  //Button Secondary
  @override
  Color get buttonSecondaryBackgroundColor => AppColors.cSecondary[300] ?? AppColors.cGray;

  @override
  Color get buttonSecondaryPressedBackgroundColor => AppColors.cGray[25] ?? AppColors.cGray;

  @override
  Color get buttonSecondaryTextColor => AppColors.cPrimary[300] ?? AppColors.cPrimary;

  @override
  Color get buttonSecondaryStrokeColor => AppColors.cGray[200] ?? AppColors.cGray;

  @override
  Color get disabledFieldTextColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get errorFieldBorderColor => AppColors.cError[300] ?? AppColors.cError;

  @override
  Color get errorFieldTextColor => AppColors.cError[300] ?? AppColors.cError;

  @override
  Color get successFieldIconColor => AppColors.cSuccess[300] ?? AppColors.cSuccess;

  @override
  Color get textFieldBackgroundColor => AppColors.cWhite;

  @override
  Color get textFieldBorderPressedColor => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get textFieldIconColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get textFieldSearchBackgroundColor => AppColors.cGray[200] ?? AppColors.cGray;

  @override
  Color get textFieldSecondaryBackgroundColor => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get textFieldTextColor => AppColors.cGray[500] ?? AppColors.cGray;

  @override
  Color get textFieldTextInputColor => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get textFieldDisabledBackgroundColor => AppColors.cGray[200] ?? AppColors.cGray;

  // Snackbar
  @override
  Color get snackBarDefaultBackgroundColor => AppColors.cGray[500] ?? AppColors.cGray;

  @override
  Color get snackBarDefaultTextColor => AppColors.cWhite;

  @override
  Color get snackBarDefaultIconColor => AppColors.cWhite;

  @override
  Color get snackBarDefaultStrokeColor => AppColors.cGray[200] ?? AppColors.cGray;

  @override
  Color get snackBarWarningBackgroundColor => AppColors.cAlert[300] ?? AppColors.cAlert;

  @override
  Color get snackBarWarningTextColor => AppColors.cWhite;

  @override
  Color get snackBarErrorBackgroundColor => AppColors.cError[300] ?? AppColors.cError;

  @override
  Color get snackBarErrorTextColor => AppColors.cWhite;

  @override
  Color get snackBarSuccessBackgroundColor => AppColors.cSuccess[300] ?? AppColors.cSuccess;

  @override
  Color get snackBarSuccessTextColor => AppColors.cWhite;

  //Surface
  @override
  Color get overlayDarkBackgroundColor => AppColors.cPrimary[500]?.withAlpha(230) ?? AppColors.cPrimary;

  @override
  Color get surfaceContainerPrimary => AppColors.cWhite;

  @override
  Color get surfaceContainerSecondary => AppColors.cGray[50] ?? AppColors.cGray;

  //Shimmer
  @override
  Color get shimmerBaseColor => AppColors.cGray[50] ?? AppColors.cGray;

  @override
  Color get shimmerHighlightColor => AppColors.cGray[200] ?? AppColors.cGray;

  @override
  Color get iconPrimaryColor => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get iconSecondaryColor => AppColors.cGray[800] ?? AppColors.cGray;

  @override
  Color get registrationAvailableNegativeColor => (AppColors.cSuccess[200] ?? AppColors.cSuccess).withAlpha(200);

  @override
  Color get registrationAvailableSuccessColor => (AppColors.cError[200] ?? AppColors.cError).withAlpha(200);

  @override
  Color get loadingBackgroundColor => AppColors.cPrimary[400] ?? AppColors.cPrimary;

  @override
  Color get shadowColor => (AppColors.cPrimary[400] ?? AppColors.cPrimary).withAlpha(50);

  @override
  AppColorsTokensLight copyWith() => const AppColorsTokensLight();

  @override
  AppColorsTokensLight lerp(ThemeExtension<AppColorsTokens>? other, double t) => const AppColorsTokensLight();

  //Done Action
  @override
  Color get doneActionKeyboardBackgroundColor => const Color(0xFFECECEE);

  @override
  Color get doneActionKeyboardTextColor => const Color(0xFF0E5EFB);

  @override
  Color get dividerColor => AppColors.cGray[900] ?? AppColors.cGray;
}
