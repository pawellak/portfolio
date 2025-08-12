import 'package:components_library/components_library_export.dart'
    show Label, StringTranslateExtension, ThemeExtensions, WidgetExtension;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/utils/extensions/string_extensions.dart';
import 'package:components_library/widgets/text_field/controllers/text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';

part 'cl_text_field_error_container.dart';

const _obscuringCharacter = '*';

const textFieldIconSize = Dimens.dimen24;

abstract class ClBaseTextField extends StatefulWidget {
  const ClBaseTextField({
    super.key,
    this.labelKey,
    required this.textInputController,
    this.toggleDoneButton,
    this.inputType = TextInputType.text,
    this.prefixIcon,
    this.enabled = true,
    this.borderEnabled = true,
    this.isHint = true,
    this.focusNode,
    this.onTap,
    this.maxLines = 1,
    this.translate = true,
    this.showCursor,
    this.minLines,
    this.backgroundColor,
    this.emptyLabelKey,
    this.floatingLabelBehaviour,
    this.inputFormatters,
    this.mainAxisAlignment,
    this.autofillHints,
  });

  final String? labelKey;
  final String? emptyLabelKey;
  final TextFieldController textInputController;
  final TextInputType inputType;
  final Widget? prefixIcon;
  final bool enabled;
  final bool translate;
  final int maxLines;
  final int? minLines;
  final bool isHint;
  final bool? showCursor;
  final bool borderEnabled;
  final GestureTapCallback? onTap;
  final VoidCallback? toggleDoneButton;
  final FloatingLabelBehavior? floatingLabelBehaviour;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final List<TextInputFormatter>? inputFormatters;
  final MainAxisAlignment? mainAxisAlignment;
  final Iterable<String>? autofillHints;
}

abstract class ClBaseTextFieldState<T extends ClBaseTextField> extends State<T> {
  bool isFocused = false;
  bool obscureText = false;

  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) => StreamBuilder(
    stream: widget.textInputController.streamController?.stream,
    builder: (context, snapshot) {
      final isError = snapshot.data.isNotNullOrEmpty;

      if (isError) {
        SemanticsService.announce('${_labelKey?.tr()} ${snapshot.data?.tr()} ', TextDirection.ltr);
      }

      return ClTextFieldErrorContainer(
        mainAxisAlignment: widget.mainAxisAlignment,
        enabled: widget.enabled,
        borderEnabled: widget.borderEnabled,
        backgroundColor: widget.backgroundColor,
        errorMessage: snapshot.data,
        hasWidgetFocus: isFocused,
        child: TextField(
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          showCursor: widget.showCursor,
          autofillHints: widget.autofillHints,
          obscuringCharacter: _obscuringCharacter,
          inputFormatters: widget.inputFormatters,
          enabled: widget.enabled,
          readOnly: widget.onTap != null,
          onTap: widget.onTap,
          controller: widget.textInputController.textController,
          keyboardType: widget.inputType,
          obscureText: obscureText,
          onChanged: onChanged,
          style: context.textTheme.bodyLarge?.copyWith(color: context.colorTokens.textFieldTextInputColor),
          focusNode: _focusNode,
          decoration: InputDecoration(
            floatingLabelBehavior: widget.floatingLabelBehaviour,
            hintText:
                widget.isHint
                    ? widget.enabled
                        ? null
                        : widget.translate
                        ? widget.labelKey?.tr()
                        : widget.labelKey
                    : null,
            label: widget.isHint ? _buildLabel(context, isError) : null,
            prefixIcon: widget.prefixIcon?.addPadding(right: Dimens.dimen8),
            suffixIcon: buildSuffixIcons(context),
            prefixIconConstraints: const BoxConstraints(maxHeight: textFieldIconSize),
            suffixIconConstraints: const BoxConstraints(maxHeight: textFieldIconSize),
            border: InputBorder.none,
          ),
        ),
      );
    },
  );

  Widget _buildLabel(BuildContext context, bool isError) => Label(
    _labelKey,
    translate: widget.translate,
    style: context.textTheme.bodyLarge,
    color: isError ? context.colorTokens.errorFieldTextColor : context.colorTokens.textFieldTextColor,
    maxLines: 1,
  );

  Widget? buildSuffixIcons(BuildContext context) => null;

  bool get _isEmpty => widget.textInputController.text.isEmpty;

  String? get _labelKey => _isEmpty ? widget.emptyLabelKey ?? widget.labelKey : widget.labelKey;

  void onChanged(String text) {}

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
