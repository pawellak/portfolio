abstract class CoreLocalClient {
  const CoreLocalClient();

  Future<Map<String, dynamic>> localFileByPath({
    required String feature,
    required String locale,
  });
}
