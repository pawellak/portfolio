//@GeneratedMicroModule;ComponentsLibraryPackageModule;package:components_library/di/library_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:components_library/navigation/library_router.dart' as _i1017;
import 'package:components_library/presentation/no_internet/bloc/no_internet_cubit.dart'
    as _i677;
import 'package:components_library/presentation/no_internet/repositories/i_no_internet_repository.dart'
    as _i558;
import 'package:components_library/presentation/no_internet/repositories/no_internet_repository.dart'
    as _i939;
import 'package:injectable/injectable.dart' as _i526;

class ComponentsLibraryPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.singleton<_i1017.LibraryRouter>(() => const _i1017.LibraryRouter());
    gh.factory<_i558.INoInternetRepository>(
        () => const _i939.NoInternetRepository());
    gh.factory<_i677.NoInternetCubit>(
        () => _i677.NoInternetCubit(gh<_i558.INoInternetRepository>()));
  }
}
