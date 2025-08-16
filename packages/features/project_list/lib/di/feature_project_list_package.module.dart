//@GeneratedMicroModule;FeatureProjectListPackageModule;package:feature_project_list/di/feature_project_list_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:components_library/components_library_export.dart' as _i965;
import 'package:feature_project_list/feature_project_list_impl.dart' as _i443;
import 'package:feature_project_list/navigation/project_list_router.dart'
    as _i678;
import 'package:feature_project_list/presentation/project_list_page/bloc/project_list_cubit.dart'
    as _i794;
import 'package:injectable/injectable.dart' as _i526;

class FeatureProjectListPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i678.ProjectListRouter>(() => const _i678.ProjectListRouter());
    gh.factory<_i794.ProjectListCubit>(() => _i794.ProjectListCubit());
    gh.singleton<_i965.FeatureProjectList>(
        () => const _i443.FeatureProjectListImpl());
  }
}
