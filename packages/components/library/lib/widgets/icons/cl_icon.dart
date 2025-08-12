import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClIcon extends StatelessWidget {
  const ClIcon({
    super.key,
    required this.path,
    this.color,
    this.size,
    this.onTap,
    this.isSemantic = true,
    this.padding = EdgeInsets.zero,
  });

  final bool isSemantic;
  final IconData path;
  final Color? color;
  final double? size;

  final GestureTapCallback? onTap;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: padding,
      child: FaIcon(path, size: size, color: color ?? context.colorTokens.iconPrimaryColor),
    ),
  );
}
