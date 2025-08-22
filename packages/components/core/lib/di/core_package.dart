import 'package:components_core/components_pub_dev_export.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.I;

@module
abstract class CorePackage {
  const CorePackage();

  @singleton
  Logger get logger => Logger();

  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@InjectableInit.microPackage()
void initCorePackage() {}
