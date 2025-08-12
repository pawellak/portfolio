part of 'cl_base_text_field.dart';

class ClTextFieldErrorContainer extends StatelessWidget {
  const ClTextFieldErrorContainer({
    super.key,
    this.errorMessage,
    required this.hasWidgetFocus,
    required this.child,
    required this.enabled,
    required this.borderEnabled,
    this.mainAxisAlignment,
    this.backgroundColor,
  });

  final String? errorMessage;
  final Widget child;
  final bool hasWidgetFocus;
  final bool enabled;
  final bool borderEnabled;
  final Color? backgroundColor;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final currentErrorMessage = errorMessage;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen12),
          decoration: BoxDecoration(
            color: context.colorTokens.textFieldBackgroundColor,
            border:
                borderEnabled
                    ? Border.all(width: Dimens.dimen2, color: _getBorderColor(context, currentErrorMessage))
                    : null,
            borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen12)),
          ),
          child: child,
        ),
        if (currentErrorMessage != null && currentErrorMessage.isNotEmpty) ...[
          const SizedBox(height: Dimens.dimen8),
          _buildErrorMessage(currentErrorMessage, context),
        ],
      ],
    );
  }

  Widget _buildErrorMessage(String errorMessage, BuildContext context) {
    return Label(
      errorMessage,
      style: context.textTheme.bodySmall,
      color: context.colorTokens.errorFieldTextColor,
    ).addPadding(left: Dimens.dimen12);
  }

  Color _getBorderColor(BuildContext context, String? errorMessage) {
    if (errorMessage != null && errorMessage.isNotEmpty) {
      return context.colorTokens.errorFieldBorderColor;
    } else if (hasWidgetFocus) {
      return context.colorTokens.textFieldBorderPressedColor;
    } else {
      return context.colorTokens.buttonSecondaryStrokeColor;
    }
  }
}
