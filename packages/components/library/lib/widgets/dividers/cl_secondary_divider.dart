import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart' show BuildContext, EdgeInsets, StatelessWidget, Widget;

class ClSecondaryDivider extends StatelessWidget {
  const ClSecondaryDivider({super.key});

  @override
  Widget build(BuildContext context) => ClContainer(
    width: double.infinity,
    height: Dimens.dimen1,
    backgroundColor: context.colorTokens.dividerSecondaryColor,
    margin: const EdgeInsets.only(
      left: Dimens.dimen32,
      right: Dimens.dimen32,
      bottom: Dimens.dimen12,
      top: Dimens.dimen12,
    ),
  );
}
