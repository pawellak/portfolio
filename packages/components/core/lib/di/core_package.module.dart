//@GeneratedMicroModule;ComponentsCorePackageModule;package:components_core/di/core_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:components_core/controllers/app_settings_repository.dart'
    as _i17;
import 'package:components_core/controllers/app_settings_repository_impl.dart'
    as _i950;
import 'package:components_core/di/core_package.dart' as _i850;
import 'package:components_core/navigation/core_router.dart' as _i861;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

class ComponentsCorePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final corePackage = _$CorePackage();
    gh.singleton<_i974.Logger>(() => corePackage.logger);
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => corePackage.prefs,
      preResolve: true,
    );
    gh.singleton<_i861.CoreRouter>(() => const _i861.CoreRouter());
    gh.factory<_i17.AppSettingsRepository>(
        () => _i950.AppSettingsRepositoryImpl(gh<_i460.SharedPreferences>()));
  }
}

class _$CorePackage extends _i850.CorePackage {}
