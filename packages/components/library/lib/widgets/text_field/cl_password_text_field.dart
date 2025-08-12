import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:components_library/widgets/text_field/cl_base_text_field.dart'
    show ClBaseTextField, ClBaseTextFieldState;
import 'package:components_library/widgets/text_field/cl_text_field_icon_button.dart' show ClTextFieldIconButton;
import 'package:flutter/material.dart';

class ClPasswordTextField extends ClBaseTextField {
  const ClPasswordTextField({
    super.key,
    required super.textInputController,
    super.inputFormatters,
    required super.labelKey,
    super.inputType,
    super.prefixIcon,
    super.autofillHints,
    this.suffixButtons = const [],
  });

  final List<ClTextFieldIconButton> suffixButtons;

  @override
  State<ClPasswordTextField> createState() => _ClPasswordTextFieldState();
}

class _ClPasswordTextFieldState extends ClBaseTextFieldState<ClPasswordTextField> {
  bool fieldIsEmpty = true;

  @override
  void initState() {
    obscureText = true;
    super.initState();
  }

  @override
  Widget? buildSuffixIcons(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      if (!fieldIsEmpty) ...[_buildCLearTextIconButton(), const SizedBox(width: Dimens.dimen8)],
      _buildObscureTextIconButton(),
      if (widget.suffixButtons.isNotEmpty) ...[const SizedBox(width: Dimens.dimen8), ...widget.suffixButtons],
    ],
  );

  Widget _buildObscureTextIconButton() => ClTextFieldIconButton(
    color: context.colorTokens.textFieldTextInputColor,
    iconPath: obscureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
    onPressed:
        () => setState(() {
          obscureText = !obscureText;
        }),
  );

  Widget _buildCLearTextIconButton() => ClTextFieldIconButton(
    iconPath: Icons.close,
    onPressed:
        () => setState(() {
          widget.textInputController.textController.clear();
          fieldIsEmpty = true;
        }),
  );

  @override
  void onChanged(String value) {
    if (value.isEmpty != fieldIsEmpty) {
      setState(() {
        fieldIsEmpty = value.isEmpty;
      });
    }
  }
}
