import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _kIconButtonAlpha = 120;
const _selectedShadowOffset = 2.5;

class ClIconButton extends StatelessWidget {
  const ClIconButton({
    super.key,
    required this.path,
    this.color,
    this.size,
    this.onTap,
    this.isSemantic = true,
    this.padding = EdgeInsets.zero,
    this.margin,
    this.isShadow = false,
    this.width,
    this.height,
  });

  final bool isSemantic;
  final IconData path;
  final Color? color;
  final double? size;
  final bool isShadow;
  final double? width;
  final double? height;

  final GestureTapCallback? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) => ClContainer(
    width: width,
    height: height,
    margin: margin ?? const EdgeInsets.all(Dimens.dimen4),
    onTap: onTap,
    borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen14)),
    backgroundColor: context.colorTokens.iconButtonBackgroundColor,
    boxShadow:
        isShadow
            ? [
              BoxShadow(
                color: context.colorTokens.iconButtonIconColor.withAlpha(_kIconButtonAlpha),
                spreadRadius: Dimens.dimen1,
                blurRadius: Dimens.dimen2,
                offset: const Offset(_selectedShadowOffset, _selectedShadowOffset),
              ),
            ]
            : null,
    padding: padding ?? const EdgeInsets.all(Dimens.dimen8),
    child: FaIcon(path, size: size, color: color ?? context.colorTokens.iconButtonIconColor),
  );
}
