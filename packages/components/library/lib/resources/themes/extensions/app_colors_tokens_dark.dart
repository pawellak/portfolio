import 'package:components_library/resources/app_colors.dart';
import 'package:components_library/resources/themes/extensions/app_colors_tokens.dart';
import 'package:flutter/material.dart';

class AppColorsTokensDark extends AppColorsTokens {
  const AppColorsTokensDark();


  @override
  Color get topNavigationBackgroundColor => Colors.black;

  @override
  Color get topNavigationTitleBackgroundColor => Colors.white;

  @override
  Color get splashScreenBackgroundColor => AppColors.cPrimary;

  @override
  Color get scaffoldBackgroundColor => AppColors.cGray[900] ?? AppColors.cPrimary;

  @override
  Color get checkBoxSelectedColor => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get refreshIndicatorColor => AppColors.cPrimary[600] ?? AppColors.cPrimary;

  @override
  Color get checkboxBorderColor => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get checkboxEnabledBackgroundColor => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  @override
  Color get checkboxTextColor => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  ///Navigation
  @override
  Color get navigationProgressBarBackground => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get navigationProgressBarPrimary => AppColors.cPrimary[900] ?? AppColors.cPrimary;

  @override
  Color get navigationTextColor => AppColors.cWhite;

  ///Badge
  @override
  Color get lightBadgeBackgroundColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get lightBadgeTextColor => AppColors.cGray[400] ?? AppColors.cGray;

  ///Text
  @override
  Color get textBrand => AppColors.cPrimary[100] ?? AppColors.cPrimary;

  @override
  Color get textPrimary => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get textSecondary => AppColors.cGray[300] ?? AppColors.cGray;

  @override
  Color get textWhite => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get runsDotsDeselectedColor => AppColors.cGray[700] ?? AppColors.cBlack;

  @override
  Color get runsDotsSelectedColor => AppColors.cPrimary[600] ?? AppColors.cPrimary;

  @override
  Color get moreMenuColor => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  @override
  Color get moreMenuColorText => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  ///Navigation
  @override
  Color get navigationAdditionalTextColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get surfaceContainerIconBackground => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get surfaceContainerIconPrimary => AppColors.cPrimary[100] ?? AppColors.cPrimary;

  ///Button Ghost
  @override
  Color get buttonGhostDefaultColor => AppColors.cPrimary[100] ?? AppColors.cPrimary;

  @override
  Color get buttonGhostPressedColor => AppColors.cPrimary[75] ?? AppColors.cPrimary;

  ///Button Primary

  @override
  Color get buttonPrimaryPressedBackgroundColor => AppColors.cPrimary[100] ?? AppColors.cPrimary;

  @override
  Color get buttonPrimaryTextColor => AppColors.cWhite;

  @override
  Color get buttonPrimaryDefaultBackgroundColor => AppColors.cPrimary[600] ?? AppColors.cPrimary;

  @override
  Color get buttonPrimaryDisabledBackgroundColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get buttonPrimaryDisabledTextColor => AppColors.cGray[600] ?? AppColors.cGray;

  ///Button Secondary

  @override
  Color get buttonSecondaryBackgroundColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get buttonSecondaryPressedBackgroundColor => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get buttonSecondaryTextColor => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get buttonSecondaryStrokeColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get disabledFieldTextColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get errorFieldBorderColor => AppColors.cError[200] ?? AppColors.cError;

  @override
  Color get errorFieldTextColor => AppColors.cError[200] ?? AppColors.cError;

  @override
  Color get successFieldIconColor => AppColors.cSuccess[200] ?? AppColors.cSuccess;

  @override
  Color get textFieldBackgroundColor => AppColors.cGray[800] ?? AppColors.cGray;

  @override
  Color get textFieldBorderPressedColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get textFieldIconColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get textFieldSearchBackgroundColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get textFieldSecondaryBackgroundColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get textFieldTextColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get textFieldTextInputColor => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get textFieldDisabledBackgroundColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get snackBarDefaultBackgroundColor => AppColors.cGray[500] ?? AppColors.cGray;

  @override
  Color get snackBarDefaultTextColor => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get snackBarDefaultIconColor => AppColors.cGray[100] ?? AppColors.cGray;

  @override
  Color get snackBarDefaultStrokeColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get snackBarWarningBackgroundColor => AppColors.cAlert[200] ?? AppColors.cAlert;

  @override
  Color get snackBarWarningTextColor => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get snackBarErrorBackgroundColor => AppColors.cError[200] ?? AppColors.cError;

  @override
  Color get snackBarErrorTextColor => AppColors.cWhite;

  @override
  Color get snackBarSuccessBackgroundColor => AppColors.cSuccess[200] ?? AppColors.cSuccess;

  @override
  Color get snackBarSuccessTextColor => AppColors.cWhite;

  @override
  Color get overlayDarkBackgroundColor => AppColors.cBlack.withAlpha(200);

  @override
  Color get surfaceContainerPrimary => AppColors.cGray[800] ?? AppColors.cGray;

  @override
  Color get surfaceContainerSecondary => AppColors.cGray[600] ?? AppColors.cGray;

  ///Bottom Navigation
  @override
  Color get bottomNavigationBackgroundColor => AppColors.cGray[900] ?? AppColors.cGray;

  @override
  Color get bottomNavigationBorderColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  Color get bottomNavigationDeselectedColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get bottomNavigationSelectedColor => AppColors.cPrimary[600] ?? AppColors.cPrimary;

  ///Shimmer
  @override
  Color get shimmerBaseColor => AppColors.cGray[800] ?? AppColors.cGray;

  @override
  Color get shimmerHighlightColor => AppColors.cGray[700] ?? AppColors.cGray;

  @override
  AppColorsTokensDark copyWith() => const AppColorsTokensDark();

  @override
  AppColorsTokensDark lerp(ThemeExtension<AppColorsTokens>? other, double t) => const AppColorsTokensDark();

  @override
  Color get iconPrimaryColor => AppColors.cGray[400] ?? AppColors.cGray;

  @override
  Color get iconSecondaryColor => AppColors.cGray[300] ?? AppColors.cGray;

  @override
  Color get registrationAvailableNegativeColor => (AppColors.cSuccess[500] ?? AppColors.cSuccess).withAlpha(200);

  @override
  Color get registrationAvailableSuccessColor => (AppColors.cError[500] ?? AppColors.cError).withAlpha(200);

  @override
  Color get loadingBackgroundColor => AppColors.cPrimary[600] ?? AppColors.cPrimary;

  @override
  Color get shadowColor => (AppColors.cPrimary[600] ?? AppColors.cPrimary).withAlpha(50);

  ///Done Action
  @override
  Color get doneActionKeyboardBackgroundColor => const Color(0xFF373737);

  @override
  Color get doneActionKeyboardTextColor => const Color(0xFFFBFBFB);

  @override
  Color get dividerColor => AppColors.cGray[25] ?? AppColors.cGray;


}
