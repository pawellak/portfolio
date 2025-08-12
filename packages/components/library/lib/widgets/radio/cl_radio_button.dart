import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';

const _radioButtonScale = 1.2;

class ClRadioButton extends StatelessWidget {
  const ClRadioButton({super.key, required this.voidCallback, required this.value});

  final VoidCallback? voidCallback;
  final bool value;

  @override
  Widget build(BuildContext context) => Transform.scale(
        scale: _radioButtonScale,
        child: Radio(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return context.colorTokens.checkboxEnabledBackgroundColor;
            }
            return context.colorTokens.checkboxBorderColor;
          }),
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          activeColor: context.colorTokens.checkboxEnabledBackgroundColor,
          splashRadius: Dimens.dimen0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: value,
          groupValue: true,
          onChanged: (value) => voidCallback?.call(),
        ),
      );
}
