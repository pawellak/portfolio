//@GeneratedMicroModule;FeatureAboutMePackageModule;package:feature_about_me/di/feature_about_me_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:components_library/components_library_export.dart' as _i965;
import 'package:feature_about_me/feature_about_me_impl.dart' as _i320;
import 'package:feature_about_me/navigation/about_me_router.dart' as _i468;
import 'package:feature_about_me/presentation/about_me_page/bloc/about_me_cubit.dart'
    as _i139;
import 'package:injectable/injectable.dart' as _i526;

class FeatureAboutMePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i468.AboutMeRouter>(() => const _i468.AboutMeRouter());
    gh.factory<_i139.AboutMeCubit>(() => _i139.AboutMeCubit());
    gh.singleton<_i965.FeatureAboutMe>(() => const _i320.FeatureAboutMeImpl());
  }
}
