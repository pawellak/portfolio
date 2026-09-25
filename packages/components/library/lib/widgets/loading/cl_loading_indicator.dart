import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/icons/app_lottie.dart';
import 'package:flutter/material.dart';

const _kDefaultRepeatTimeInMs = 1000;

class ClLoadingIndicator extends StatelessWidget {
  const ClLoadingIndicator({super.key,this.isStatic = false});

  final bool isStatic;

  @override
  Widget build(BuildContext context) => Center(
    child: ClLottie(
      isStatic: isStatic,
      path: AppLottie.loading,
      color: context.colorTokens.loadingBackgroundColor,
      repeatTimeInMs: _kDefaultRepeatTimeInMs,
    ),
  );
}
