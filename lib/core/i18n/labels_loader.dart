import 'dart:convert';
import 'dart:ui' show Locale;

import 'package:components_library/components_library_export.dart';
import 'package:flutter/services.dart';

class LabelsLoader extends AssetLoader {
  const LabelsLoader();

  static const String localLabelsPath = 'assets/translations';

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async => _getLocalDictionary(locale);

  Future<Map<String, dynamic>?> _getLocalDictionary(Locale locale) async {
    try {
      final loc = json.decode(await rootBundle.loadString('$localLabelsPath/${locale.languageCode}.json'));
      return loc as Map<String, dynamic>?;
    } catch (_) {
      return null;
    }
  }
}
