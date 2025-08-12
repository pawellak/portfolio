abstract class INoInternetRepository {
  const INoInternetRepository();

  Future<bool> isAvailable();
}
