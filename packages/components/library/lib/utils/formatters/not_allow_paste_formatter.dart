import 'package:components_library/components_library_export.dart' show ContextLibraryExtensions;
import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter/services.dart';

class NotAllowPasteFormatter extends TextInputFormatter {
  const NotAllowPasteFormatter(this.context);

  final BuildContext context;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final textLengthDifference = (newValue.text.length - oldValue.text.length).abs();

    if (textLengthDifference < 2) {
      return newValue;
    } else {
      context.showWarningToast('error.formatter.paste_not_allowed');
      return oldValue;
    }
  }
}
