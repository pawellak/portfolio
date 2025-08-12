import 'package:components_library/resources/dimens.dart';
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ClContainer extends StatelessWidget {
  const ClContainer({
    super.key,
    this.child,
    this.padding,
    this.onTap,
    this.backgroundColor,
    this.margin,
    this.borderRadius,
    this.boxShadow,
    this.width,
    this.border,
    this.height,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: _buildChildWidget(context));
    } else {
      return _buildChildWidget(context);
    }
  }

  Widget _buildChildWidget(BuildContext context) => Container(
        width: width,
        height: height,
        padding: padding ?? const EdgeInsets.all(Dimens.dimen16),
        margin: margin,
        decoration: BoxDecoration(
          border: border,
          boxShadow: boxShadow,
          color: backgroundColor ?? context.colorTokens.surfaceContainerPrimary,
          borderRadius: borderRadius ?? BorderRadius.circular(Dimens.dimen12),
        ),
        child: child,
      );
}
