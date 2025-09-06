import 'package:components_library/resources/app_colors.dart';
import 'package:components_library/resources/themes/colors/app_colors_tokens.dart';
import 'package:flutter/material.dart';

class AppColorsTokensLight extends AppColorsTokens {
  const AppColorsTokensLight();

  //Project list Page
  @override
  Color get projectListBackgroundColor => AppColors.cSecondary[100] ?? AppColors.cSecondary;

  //Checkbox
  @override
  Color get checkboxIconColor => AppColors.cSecondary[600] ?? AppColors.cPrimary;

  //Contact
  @override
  Color get contactBackgroundColor => AppColors.cSecondary[200] ?? AppColors.cPrimary;

  //Navigation
  @override
  Color get navigationProgressBarBackground => AppColors.cPrimary[200] ?? AppColors.cPrimary;

  @override
  Color get navigationProgressBarPrimary => AppColors.cPrimary[900] ?? AppColors.cPrimary;

  @override
  Color get navigationTextColor => AppColors.cBlack;

  @override
  Color get navigationAdditionalTextColor => AppColors.cSecondary[500] ?? AppColors.cSecondary;

  @override
  Color get topNavigationSecondaryBackgroundColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  @override
  Color get topNavigationPrimaryBackgroundColor => AppColors.cSecondary[50] ?? AppColors.cSecondary;

  //Bottom Navigation
  @override
  Color get bottomNavigationPrimaryColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  @override
  Color get bottomNavigationSecondaryColor => AppColors.cWhite;

  //More Navigation
  @override
  Color get moreMenuColor => AppColors.cBlack;

  @override
  Color get moreMenuColorText => AppColors.cPrimary;

  @override
  Color get loadingBackgroundColor => AppColors.cSecondary[500] ?? AppColors.cPrimary;

  @override
  Color get shimmerBaseColor => AppColors.cSecondary[50] ?? AppColors.cSecondary;

  @override
  Color get shimmerHighlightColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  //Icons
  @override
  Color get iconPrimaryColor => AppColors.cSecondary[900] ?? AppColors.cSecondary;

  @override
  Color get iconBackgroundColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  @override
  Color get flagBackgroundColor => AppColors.cSecondary[200] ?? AppColors.cSecondary;

  @override
  Color get textPrimary => AppColors.cSecondary[900] ?? AppColors.cSecondary;

  @override
  Color get textSecondary => AppColors.cSecondary[500] ?? AppColors.cSecondary;

  @override
  Color get textH1 => AppColors.cSuccess[400] ?? AppColors.cSuccess;

  @override
  Color get textH2 => AppColors.cSuccess[400] ?? AppColors.cSuccess;

  @override
  Color get textH3 => AppColors.cSuccess[300] ?? AppColors.cSuccess;

  @override
  Color get textH4 => AppColors.cSuccess[200] ?? AppColors.cSuccess;

  //Button Primary
  @override
  Color get buttonPrimaryTextColor => AppColors.cWhite;

  @override
  Color get iconButtonBackgroundColor => AppColors.cSecondary[300] ?? AppColors.cSecondary;

  @override
  Color get iconButtonIconColor => AppColors.cSecondary[700] ?? AppColors.cSecondary;

  @override
  Color get buttonPrimaryDefaultBackgroundColor => AppColors.cSuccess[100] ?? AppColors.cPrimary;

  @override
  Color get snackBarDefaultIconColor => AppColors.cWhite;

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
  Color get surfaceContainerPrimary => AppColors.cWhite;

  @override
  Color get containerBorderColor => AppColors.cBlack.withAlpha(60);

  @override
  Color get overlayDarkBackgroundColor => AppColors.cPrimary[500]?.withAlpha(230) ?? AppColors.cPrimary;

  //Divider
  @override
  Color get dividerColor => AppColors.cSecondary[400] ?? AppColors.cSecondary;

  @override
  Color get dividerSecondaryColor => AppColors.cSecondary[300] ?? AppColors.cSecondary;

  @override
  AppColorsTokens copyWith() => this;

  @override
  AppColorsTokens lerp(ThemeExtension<AppColorsTokens>? other, double t) => this;
}
