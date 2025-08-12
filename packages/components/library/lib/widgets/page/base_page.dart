import 'package:components_core/di/core_package.dart';
import 'package:flutter/material.dart';

import '../../components_library_export.dart';
import '../../resources/dimens.dart';

abstract class BasePage<T extends BaseCubit> extends StatelessWidget {
  const BasePage({super.key, this.canPop = true, EdgeInsets? edgeInsets, this.initialParams})
    : _edgeInsets = edgeInsets ?? const EdgeInsets.only(left: Dimens.dimen16, right: Dimens.dimen16);

  final bool canPop;
  final dynamic initialParams;

  abstract final String goName;
  abstract final String goPath;

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
            child: SafeArea(child: Padding(padding: _edgeInsets, child: buildPage(providerContext))),
          ),
    ),
  );
}
