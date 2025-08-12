import 'dart:ui' show Locale;

import 'package:components_library/components_library_export.dart';

class LabelsLoader extends AssetLoader {
  const LabelsLoader();

  static const String localLabelsPath = 'assets/translations';

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    ///TODO: Add logic to check if translations are already fetched
    return null;
  }
}
