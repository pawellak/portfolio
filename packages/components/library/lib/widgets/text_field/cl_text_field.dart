import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/text_field/cl_base_text_field.dart'
    show ClBaseTextField, ClBaseTextFieldState;
import 'package:components_library/widgets/text_field/cl_text_field_icon_button.dart' show ClTextFieldIconButton;
import 'package:flutter/material.dart';

class ClTextField extends ClBaseTextField {
  const ClTextField({
    super.key,
    required super.textInputController,
    super.labelKey,
    super.inputType,
    super.enabled,
    super.prefixIcon,
    super.onTap,
    super.translate,
    super.floatingLabelBehaviour,
    super.focusNode,
    super.backgroundColor,
    super.emptyLabelKey,
    super.isHint,
    super.maxLines,
    super.minLines,
    super.borderEnabled,
    super.inputFormatters,
    super.mainAxisAlignment,
    super.autofillHints,
    this.clearButtonEnabled = true,
    this.suffixButtons = const [],
  });

  final List<Widget> suffixButtons;
  final bool clearButtonEnabled;

  @override
  State<ClTextField> createState() => _ClTextFieldState();
}

class _ClTextFieldState extends ClBaseTextFieldState<ClTextField> {
  bool _fieldIsEmpty = true;

  @override
  Widget? buildSuffixIcons(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!_fieldIsEmpty && widget.clearButtonEnabled) _buildClearTextIconButton(),
          if (widget.suffixButtons.isNotEmpty) ...[const SizedBox(width: Dimens.dimen8), ...widget.suffixButtons],
        ],
      );

  Widget _buildClearTextIconButton() => ClTextFieldIconButton(
        iconPath: Icons.close,
        onPressed: () => setState(() {
          widget.textInputController.textController.clear();
          _fieldIsEmpty = true;
        }),
      );

  @override
  void onChanged(String value) {
    if (value.isEmpty != _fieldIsEmpty) {
      setState(() {
        _fieldIsEmpty = value.isEmpty;
      });
    }
  }
}
