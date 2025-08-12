import 'package:components_core/components_pub_dev_export.dart';
import 'package:logger/logger.dart';

final getIt = GetIt.I;

@module
abstract class CorePackage {
  const CorePackage();

  @singleton
  Logger get logger => Logger();

}

@InjectableInit.microPackage()
void initCorePackage() {}
