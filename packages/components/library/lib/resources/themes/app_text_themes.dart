import 'package:components_library/resources/app_font_size.dart';
import 'package:flutter/material.dart';

abstract class AppTextThemes {
  const AppTextThemes();

  /// Text styles are adapted to ENEA typography from figma
  static TextTheme get appTextTheme => TextTheme(
        displayLarge: TextStyle(
            fontSize: AppFontSize.displayLarge.size,
            height: AppFontSize.displayLarge.lineHeight,
            fontWeight: FontWeight.w500,),
        displayMedium: TextStyle(
            fontSize: AppFontSize.displayMedium.size,
            height: AppFontSize.displayMedium.lineHeight,
            fontWeight: FontWeight.w500,),
        displaySmall: TextStyle(
            fontSize: AppFontSize.displaySmall.size,
            height: AppFontSize.displaySmall.lineHeight,
            fontWeight: FontWeight.w500,),
        titleLarge: TextStyle(
            fontSize: AppFontSize.titleLarge.size,
            height: AppFontSize.titleLarge.lineHeight,
            fontWeight: FontWeight.w500,),
        titleMedium: TextStyle(
            fontSize: AppFontSize.titleMedium.size,
            height: AppFontSize.titleMedium.lineHeight,
            fontWeight: FontWeight.w500,),
        titleSmall: TextStyle(
            fontSize: AppFontSize.titleSmall.size,
            height: AppFontSize.titleSmall.lineHeight,
            fontWeight: FontWeight.w500,),
        bodyLarge: TextStyle(
            fontSize: AppFontSize.bodyLarge.size,
            height: AppFontSize.bodyLarge.lineHeight,
            fontWeight: FontWeight.w500,),
        bodyMedium: TextStyle(
            fontSize: AppFontSize.bodyMedium.size,
            height: AppFontSize.bodyMedium.lineHeight,
            fontWeight: FontWeight.w500,),
        bodySmall: TextStyle(
            fontSize: AppFontSize.bodySmall.size,
            height: AppFontSize.bodySmall.lineHeight,
            fontWeight: FontWeight.w500,),
      );
}
