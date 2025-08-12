import 'package:components_library/components_library_export.dart' show InjectableInit, getIt;
import 'package:pawellak_portfolio/core/di/get_it.config.dart';

@InjectableInit()
Future<void> configureDependencies(String environment) async => getIt.init(environment: environment);
