// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:components_core/di/core_package.module.dart' as _i960;
import 'package:components_library/di/library_package.module.dart' as _i144;
import 'package:feature_about_me/di/feature_about_me_package.module.dart'
    as _i102;
import 'package:feature_project_list/di/feature_project_list_package.module.dart'
    as _i214;
import 'package:feature_settings/di/feature_settings_package.module.dart'
    as _i504;
import 'package:feature_weather/di/feature_weather_package.module.dart'
    as _i149;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i504.FeatureSettingsPackageModule().init(gh);
    await _i214.FeatureProjectListPackageModule().init(gh);
    await _i102.FeatureAboutMePackageModule().init(gh);
    await _i149.FeatureWeatherPackageModule().init(gh);
    await _i960.ComponentsCorePackageModule().init(gh);
    await _i144.ComponentsLibraryPackageModule().init(gh);
    return this;
  }
}
