import 'dart:convert';
import 'package:components_core/components_pub_dev_export.dart' show Singleton;
import 'package:flutter/services.dart';

import 'core_local_client.dart';

@Singleton(as: CoreLocalClient)
class CoreLocalClientImpl extends CoreLocalClient {
  @override
  Future<Map<String, dynamic>> localFileByPath({
    required String feature,
    required String fileName,
    required String locale,
  }) async {
    final file = await rootBundle.loadString('assets/services/local/features/$feature/${fileName}_$locale.json');
    return jsonDecode(file) as Map<String, dynamic>;
  }
}
