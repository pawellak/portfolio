import 'package:components_library/resources/app_colors.dart';
import 'package:components_library/resources/themes/colors/app_colors_tokens.dart';
import 'package:flutter/material.dart' show Color, ThemeExtension;

class AppColorsTokensDark extends AppColorsTokens {
  const AppColorsTokensDark();

  //Project list Page
  @override
  Color get projectListBackgroundColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  //Checkbox
  @override
  Color get checkboxIconColor => AppColors.cPrimary[100] ?? AppColors.cPrimary;

  //Contact
  @override
  Color get contactBackgroundColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  //Navigation
  @override
  Color get navigationProgressBarBackground => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get navigationProgressBarPrimary => AppColors.cPrimary[900] ?? AppColors.cPrimary;

  @override
  Color get navigationTextColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  //Navigation
  @override
  Color get navigationAdditionalTextColor => AppColors.cSecondary[400] ?? AppColors.cSecondary;

  @override
  Color get topNavigationSecondaryBackgroundColor => AppColors.cBlack;

  @override
  Color get topNavigationPrimaryBackgroundColor => AppColors.cSecondary[300] ?? AppColors.cSecondary;

  //Bottom Navigation
  @override
  Color get bottomNavigationPrimaryColor => AppColors.cBlack;

  @override
  Color get bottomNavigationSecondaryColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  //More Navigation
  @override
  Color get moreMenuColor => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  @override
  Color get moreMenuColorText => AppColors.cPrimary[500] ?? AppColors.cPrimary;

  //Loading
  @override
  Color get loadingBackgroundColor => AppColors.cPrimary[75] ?? AppColors.cPrimary;

  @override
  Color get shimmerBaseColor => AppColors.cSecondary[800] ?? AppColors.cSecondary;

  @override
  Color get shimmerHighlightColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  //Icons
  @override
  Color get iconPrimaryColor => AppColors.cSecondary[400] ?? AppColors.cSecondary;

  @override
  Color get iconBackgroundColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  @override
  Color get flagBackgroundColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  //Text
  @override
  Color get textPrimary => AppColors.cSecondary[25] ?? AppColors.cSecondary;

  @override
  Color get textSecondary => AppColors.cSecondary[300] ?? AppColors.cSecondary;

  @override
  Color get textH1 => AppColors.cSuccess[200] ?? AppColors.cSuccess;

  @override
  Color get textH2 => AppColors.cSuccess[200] ?? AppColors.cSuccess;

  @override
  Color get textH3 => AppColors.cSuccess[100] ?? AppColors.cSuccess;

  @override
  Color get textH4 => AppColors.cSuccess[75] ?? AppColors.cSuccess;

  //Button Primary
  @override
  Color get buttonPrimaryTextColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  @override
  Color get buttonPrimaryDefaultBackgroundColor => AppColors.cSuccess[300] ?? AppColors.cPrimary;

  @override
  Color get iconButtonBackgroundColor => AppColors.cSecondary[300] ?? AppColors.cSecondary;

  @override
  Color get iconButtonIconColor => AppColors.cSecondary[500] ?? AppColors.cSecondary;

  //Snackbar
  @override
  Color get snackBarDefaultIconColor => AppColors.cSecondary[100] ?? AppColors.cSecondary;

  @override
  Color get snackBarErrorBackgroundColor => AppColors.cError[200] ?? AppColors.cError;

  @override
  Color get snackBarErrorTextColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  @override
  Color get snackBarSuccessBackgroundColor => AppColors.cSuccess[200] ?? AppColors.cSuccess;

  @override
  Color get snackBarSuccessTextColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  //Surface
  @override
  Color get surfaceContainerPrimary => AppColors.cSecondary[800] ?? AppColors.cSecondary;

  @override
  Color get containerBorderColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  @override
  Color get overlayDarkBackgroundColor => AppColors.cBlack.withAlpha(200);

  //Divider
  @override
  Color get dividerColor => AppColors.cSecondary[400] ?? AppColors.cSecondary;

  @override
  Color get dividerSecondaryColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  @override
  AppColorsTokens copyWith() => this;

  @override
  AppColorsTokens lerp(ThemeExtension<AppColorsTokens>? other, double t) => this;
}
