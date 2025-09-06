import 'package:components_core/components_pub_dev_export.dart' show BlocProvider;
import 'package:components_core/di/core_package.dart' show getIt;
import 'package:components_core/presentation/base_cubit.dart' show BaseCubit;
import 'package:components_library/components_library_export.dart' show ClIconButton;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class BasePage<T extends BaseCubit> extends StatelessWidget {
  const BasePage({super.key, this.canPop = true, EdgeInsets? edgeInsets, this.initialParams, this.isBackArrow = false})
    : _edgeInsets = edgeInsets ?? const EdgeInsets.symmetric(horizontal: Dimens.dimen16);

  final bool canPop;
  final dynamic initialParams;
  final bool isBackArrow;

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
          (providerContext) => SafeArea(
            child: PopScope(
              canPop: canPop,
              onPopInvokedWithResult: (didPop, result) {
                onBackPressed(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!kIsWeb && isBackArrow)
                    ClIconButton(
                      onTap: Navigator.of(context).maybePop,
                      margin: const EdgeInsets.only(left: Dimens.dimen16, bottom: Dimens.dimen8, top: Dimens.dimen8),
                      padding: const EdgeInsets.all(Dimens.dimen8),
                      path: Icons.arrow_back,
                    ),
                  Expanded(child: Padding(padding: _edgeInsets, child: buildPage(context))),
                ],
              ),
            ),
          ),
    ),
  );
}
