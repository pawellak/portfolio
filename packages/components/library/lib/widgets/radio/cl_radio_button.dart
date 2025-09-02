// import 'package:components_library/components_library_export.dart';
// import 'package:components_library/resources/dimens.dart';
// import 'package:flutter/material.dart';
//
// const _radioButtonScale = 1.2;
//
// class ClRadioButton extends StatelessWidget {
//   const ClRadioButton({super.key, required this.voidCallback, required this.value});
//
//   final VoidCallback? voidCallback;
//   final bool value;
//
//   @override
//   Widget build(BuildContext context) => Transform.scale(
//     scale: _radioButtonScale,
//     child: Radio(
//       visualDensity: const VisualDensity(
//         horizontal: VisualDensity.minimumDensity,
//         vertical: VisualDensity.minimumDensity,
//       ),
//       activeColor: Colors.red,
//       splashRadius: Dimens.dimen0,
//       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//       value: value,
//       groupValue: true,
//       onChanged: (value) => voidCallback?.call(),
//     ),
//   );
// }
