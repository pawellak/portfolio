import 'package:components_core/components_pub_dev_export.dart' show BaseOptions, Dio, Injectable;
import 'package:components_library/presentation/no_internet/repositories/i_no_internet_repository.dart';

const _kHost = 'google.com';
const _kScheme = 'https';
const _kTimeOutInSec = 5;

@Injectable(as: INoInternetRepository)
class NoInternetRepository implements INoInternetRepository {
  const NoInternetRepository();

  @override
  Future<bool> isAvailable() async {
    try {
      return await Dio(BaseOptions(connectTimeout: _timeOut, receiveTimeout: _timeOut, sendTimeout: _timeOut))
          .getUri<dynamic>(Uri(host: _kHost, scheme: _kScheme))
          .then((response) => response.statusCode == 200)
          .onError((_, __) => false);
    } catch (_) {
      return false;
    }
  }

  Duration get _timeOut => const Duration(seconds: _kTimeOutInSec);
}
