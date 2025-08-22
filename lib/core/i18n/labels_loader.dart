import 'dart:convert' show json;
import 'dart:ui' show Locale;

import 'package:components_library/components_library_export.dart' show AppSettingsRepository, AssetLoader, getIt;
import 'package:flutter/services.dart' show rootBundle;

class LabelsLoader extends AssetLoader {
  const LabelsLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    await _updateAppSettings(locale);
    return _getLocalDictionary(path, locale);
  }

  Future<Map<String, dynamic>?> _getLocalDictionary(String path, Locale locale) async {
    try {
      final stringTranslation = await rootBundle.loadString('$path/${locale.languageCode}.json');
      return json.decode(stringTranslation) as Map<String, dynamic>?;
    } catch (_) {
      return null;
    }
  }

  Future<void> _updateAppSettings(Locale locale) async {
    await getIt<AppSettingsRepository>().saveLocale(locale.languageCode);
  }
}
