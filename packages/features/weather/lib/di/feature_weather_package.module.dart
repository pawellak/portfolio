//@GeneratedMicroModule;FeatureWeatherPackageModule;package:feature_weather/di/feature_weather_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:components_library/components_library_export.dart' as _i965;
import 'package:feature_weather/navigation/weather_router.dart' as _i95;
import 'package:feature_weather/presentation/weather_page/bloc/weather_cubit.dart'
    as _i151;
import 'package:feature_weather/weather_feature_impl.dart' as _i555;
import 'package:injectable/injectable.dart' as _i526;

class FeatureWeatherPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i95.WeatherRouter>(() => const _i95.WeatherRouter());
    gh.factory<_i151.WeatherCubit>(() => _i151.WeatherCubit());
    gh.singleton<_i965.FeatureWeather>(() => const _i555.FeatureWeatherImpl());
  }
}
