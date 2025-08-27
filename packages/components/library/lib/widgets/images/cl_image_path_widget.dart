import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';

class ClImagePathWidget extends StatelessWidget {
  const ClImagePathWidget({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.imageBorderRadius,
    this.fit = BoxFit.fitHeight,
  });

  final String path;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BorderRadius? imageBorderRadius;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) => ClContainer(
    margin: margin,
    width: width,
    height: height,
    padding: padding ?? const EdgeInsets.symmetric(horizontal: Dimens.dimen4),
    borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(Dimens.dimen6)),
    backgroundColor: backgroundColor ?? context.colorTokens.iconBackgroundColor,
    child: ClipRRect(
      borderRadius: imageBorderRadius ?? const BorderRadius.all(Radius.circular(Dimens.dimen6)),
      child: Image.asset(path, fit: fit),
    ),
  );
}
