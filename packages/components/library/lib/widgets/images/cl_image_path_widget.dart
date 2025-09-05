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
    this.fit = BoxFit.fitHeight,
    this.constraints,
  });

  final String path;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxFit fit;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) => ClContainer(
    constraints: constraints,
    clipBehavior: Clip.antiAlias,
    margin: margin,
    width: width,
    height: height,
    padding: padding ?? EdgeInsets.zero,
    borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(Dimens.dimen6)),
    backgroundColor: backgroundColor ?? context.colorTokens.iconBackgroundColor,
    child: Image.asset(path, fit: fit),
  );
}
