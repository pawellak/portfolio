import 'package:flutter/material.dart';

abstract class AppColors {
  static const cWhite = Color(0xFFFCFCFD);
  static const cBlack = Color(0xFF000000);
  static const cTransparent = Colors.transparent;

  static const MaterialColor cPrimary = MaterialColor(0xFF2B539B, <int, Color>{
    50: Color(0xFFE6EAF3),
    75: Color(0xFF96AACE),
    100: Color(0xFF96AACE),
    200: Color(0xFF2B539B),
    300: Color(0xFF003087),
    400: Color(0xFF00225F),
    500: Color(0xFF001D52),
    600: Color(0xFF001F52),
  });

  static const MaterialColor cSecondary = MaterialColor(0xFF98A2B3, <int, Color>{
    25: Color(0xFFFCFCFD),
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF2F4F7),
    200: Color(0xFFEAECF0),
    300: Color(0xFFD0D5DD),
    400: Color(0xFF98A2B3),
    500: Color(0xFF667085),
    600: Color(0xFF475467),
    700: Color(0xFF344054),
    800: Color(0xFF1D2939),
    900: Color(0xFF101728),
  });

  static const MaterialColor cSuccess = MaterialColor(0xFF4B9C45, <int, Color>{
    50: Color(0xFFE9F3E9),
    75: Color(0xFFA6CEA3),
    100: Color(0xFF81BA7D),
    200: Color(0xFF4B9C45),
    300: Color(0xFF26881F),
    400: Color(0xFF1B5F16),
    500: Color(0xFF175313),
  });

  static const MaterialColor cError = MaterialColor(0xFFBD3431, <int, Color>{
    50: Color(0xFFFFF3F3),
    75: Color(0xFFDF9B99),
    100: Color(0xFFD1716F),
    200: Color(0xFFBD3431),
    300: Color(0xFFB00A07),
    400: Color(0xFF7B0705),
    500: Color(0xFF6B0604),
  });
}
