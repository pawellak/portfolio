import 'package:components_library/resources/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextSelectionThemes {
  const AppTextSelectionThemes();

  static TextSelectionThemeData get dark => TextSelectionThemeData(
        cursorColor: AppColors.cPrimary[100],
        selectionColor: AppColors.cSecondary[700],
        selectionHandleColor: AppColors.cPrimary[100],
      );

  static TextSelectionThemeData get light => TextSelectionThemeData(
        cursorColor: AppColors.cPrimary[300],
        selectionColor: AppColors.cPrimary[75],
        selectionHandleColor: AppColors.cPrimary[300],
      );
}
