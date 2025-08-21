import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';

class ClSwitch extends StatelessWidget {
  const ClSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
    required this.iconDataSelected,
    required this.iconDataUnselected,
  });

  final bool value;
  final String label;
  final IconData iconDataSelected;
  final IconData iconDataUnselected;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) => InkWell(
    borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen12)),

    onTap: () {
      onChanged(!value);
    },
    child: Row(
      spacing: Dimens.dimen12,
      children: [
        AnimatedCrossFade(
          firstChild: ClIcon(path: iconDataSelected),
          secondChild: ClIcon(path: iconDataUnselected),
          crossFadeState: value? CrossFadeState.showFirst:CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),

        Expanded(child: Text(label)),
        Switch.adaptive(value: value, onChanged: onChanged),
      ],
    ).addPaddingAll(Dimens.dimen4),
  );
}
