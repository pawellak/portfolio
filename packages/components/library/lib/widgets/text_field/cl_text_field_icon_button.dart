import 'package:components_library/components_library_export.dart' show ClIcon, ThemeExtensions;

import 'package:components_library/widgets/text_field/cl_base_text_field.dart';
import 'package:flutter/material.dart';

class ClTextFieldIconButton extends StatelessWidget {
  const ClTextFieldIconButton({super.key, required this.iconPath, this.onPressed, this.color});

  final IconData iconPath;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: textFieldIconSize,
        height: textFieldIconSize,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: ClIcon(
            path: iconPath,
            color: color ?? context.colorTokens.textFieldIconColor,
          ),
        ),
      );
}
