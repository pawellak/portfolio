import 'dart:ui' show Locale;

abstract class AppLocale {
  static const pl = Locale('pl');
  static const en = Locale('en');

  static List<Locale> get supportedLocales => [pl, en];
}
