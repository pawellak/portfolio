import 'package:components_core/components_pub_dev_export.dart' show BlocProvider;
import 'package:components_core/di/core_package.dart' show getIt;
import 'package:components_core/presentation/base_cubit.dart' show BaseCubit;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:flutter/material.dart';

abstract class BasePage<T extends BaseCubit> extends StatelessWidget {
  const BasePage({super.key, this.canPop = true, EdgeInsets? edgeInsets, this.initialParams})
    : _edgeInsets = edgeInsets ?? const EdgeInsets.only(left: Dimens.dimen16, right: Dimens.dimen16);

  final bool canPop;
  final dynamic initialParams;

  final EdgeInsets _edgeInsets;

  Widget buildPage(BuildContext context);

  VoidCallback onBackPressed(BuildContext context) => () {};

  @override
  Widget build(BuildContext context) => BlocProvider(
    create:
        (_) =>
            getIt<T>()
              ..initialMethod()
              ..initialParams(initialParams),
    child: Builder(
      builder:
          (providerContext) => PopScope(
            canPop: canPop,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: _edgeInsets,
                child: CustomScrollView(
                  slivers: [SliverFillRemaining(hasScrollBody: false, child: buildPage(context))],
                ),
              ),
            ),
          ),
    ),
  );
}
