import 'package:components_core/components_pub_dev_export.dart' show BlocProvider;
import 'package:components_core/di/core_package.dart' show getIt;
import 'package:components_core/presentation/base_cubit.dart' show BaseCubit;
import 'package:components_library/components_library_export.dart' show ClIcon, ContextExtensions, ThemeExtensions;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class BasePage<T extends BaseCubit> extends StatelessWidget {
  const BasePage({super.key, this.canPop = true, EdgeInsets? edgeInsets, this.initialParams, this.isBackArrow = false})
    : _edgeInsets = edgeInsets ?? const EdgeInsets.only(left: Dimens.dimen16, right: Dimens.dimen16);

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
      builder: (providerContext) {
        return PopScope(
          canPop: canPop,
          onPopInvokedWithResult: (didPop, result) {
            onBackPressed(context);
          },
          child: Column(
            children: [
              if (!kIsWeb)
                ClContainer(
                  padding: EdgeInsets.only(top: context.topPadding, left: Dimens.dimen32, bottom: Dimens.dimen12),
                  backgroundColor: context.colorTokens.topNavigationSecondaryBackgroundColor,
                  borderRadius: BorderRadius.zero,
                  width: double.infinity,
                  child:
                      isBackArrow
                          ? ClIcon(
                            path: Icons.arrow_back,
                            color: context.colorTokens.topNavigationPrimaryBackgroundColor,
                          )
                          : const SizedBox(),
                  onTap: () {
                    Navigator.of(context).maybePop();
                  },
                ),
              Expanded(child: Padding(padding: _edgeInsets, child: buildPage(context))),
            ],
          ),
        );
      },
    ),
  );
}
