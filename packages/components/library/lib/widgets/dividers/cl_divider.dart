import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart' show BuildContext, EdgeInsets, StatelessWidget, Widget;

class ClDivider extends StatelessWidget {
  const ClDivider({super.key});

  @override
  Widget build(BuildContext context) => ClContainer(
    width: double.infinity,
    height: Dimens.dimen1,
    backgroundColor: context.colorTokens.dividerColor,
    margin: const EdgeInsets.only(
      left: Dimens.dimen4,
      right: Dimens.dimen4,
      bottom: Dimens.dimen12,
      top: Dimens.dimen12,
    ),
  );
}
