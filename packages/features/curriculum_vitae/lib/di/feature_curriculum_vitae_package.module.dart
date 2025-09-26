//@GeneratedMicroModule;FeatureCurriculumVitaePackageModule;package:feature_curriculum_vitae/di/feature_curriculum_vitae_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:components_library/components_library_export.dart' as _i965;
import 'package:feature_curriculum_vitae/feature_curriculum_vitae_impl.dart'
    as _i838;
import 'package:feature_curriculum_vitae/navigation/curriculum_vitae_router.dart'
    as _i581;
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/bloc/curriculum_vitae_cubit.dart'
    as _i239;
import 'package:injectable/injectable.dart' as _i526;

class FeatureCurriculumVitaePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i581.CurriculumVitaeRouter>(
        () => const _i581.CurriculumVitaeRouter());
    gh.factory<_i239.CurriculumVitaeCubit>(() => _i239.CurriculumVitaeCubit());
    gh.singleton<_i965.FeatureCurriculumVitae>(
        () => const _i838.FeatureCurriculumVitaeImpl());
  }
}
