import 'package:components_library/resources/themes/colors/app_colors_tokens.dart';
import 'package:components_library/resources/themes/colors/app_colors_tokens_light.dart';
import 'package:flutter/material.dart' show BuildContext, ColorScheme, TextTheme, Theme, ThemeData;

extension ThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  AppColorsTokens get colorTokens => theme.extension<AppColorsTokens>() ?? const AppColorsTokensLight();
}
