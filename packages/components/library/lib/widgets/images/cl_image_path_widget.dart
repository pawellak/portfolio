import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';

class ClImagePathWidget extends StatelessWidget {
  const ClImagePathWidget({super.key, required this.path, this.width});

  final String path;
  final double? width;

  @override
  Widget build(BuildContext context) => ClContainer(
    width: width,
    padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen4),
    borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen6)),
    backgroundColor: context.colorTokens.iconBackgroundColor,
    child: Image.asset(path, fit: BoxFit.fitHeight),
  );
}
