import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_library/presentation/no_internet/repositories/i_no_internet_repository.dart';
import 'package:dio/dio.dart';

@Injectable(as: INoInternetRepository)
class NoInternetRepository implements INoInternetRepository {
  const NoInternetRepository();

  @override
  Future<bool> isAvailable() async {
    try {
      return await Dio(BaseOptions(connectTimeout: _timeOut, receiveTimeout: _timeOut, sendTimeout: _timeOut))
          .getUri<dynamic>(Uri(host: 'google.com', scheme: 'https'))
          .then((response) => response.statusCode == 200)
          .onError((_, __) => false);
    } catch (_) {
      return false;
    }
  }

  Duration get _timeOut => const Duration(seconds: 5);
}
