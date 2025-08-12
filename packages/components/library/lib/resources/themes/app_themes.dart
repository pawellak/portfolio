import 'package:components_library/resources/app_colors.dart';
import 'package:components_library/resources/themes/app_text_selection_teme.dart';
import 'package:components_library/resources/themes/app_text_themes.dart';
import 'package:components_library/resources/themes/app_transition_theme.dart';
import 'package:components_library/resources/themes/extensions/app_colors_tokens_dark.dart';
import 'package:components_library/resources/themes/extensions/app_colors_tokens_light.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemes {
  static final appThemeLight = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cPrimary),
    scaffoldBackgroundColor: Colors.red,
    fontFamily: GoogleFonts.manrope().fontFamily,
    extensions: const [AppColorsTokensLight()],
    textTheme: AppTextThemes.appTextTheme,
    bottomSheetTheme: BottomSheetThemeData(
      constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 200),
      showDragHandle: true,
      modalBackgroundColor: AppColors.cGray[100] ?? AppColors.cGray,
      modalBarrierColor: AppColors.cPrimary[500]?.withAlpha(230) ?? AppColors.cPrimary,
      backgroundColor: AppColors.cGray[100] ?? AppColors.cGray,
    ),
    textSelectionTheme: AppTextSelectionThemes.light,
    pageTransitionsTheme: AppTransitionTheme.transitionLightMode,
    brightness: Brightness.light,
  );

  static final appThemeDark = appThemeLight.copyWith(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cGray),
    scaffoldBackgroundColor: AppColors.cGray[900],
    textSelectionTheme: AppTextSelectionThemes.dark,
    pageTransitionsTheme: AppTransitionTheme.transitionDarkMode,
    extensions: [const AppColorsTokensDark()],
  );
}
