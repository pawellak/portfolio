import 'package:flutter/services.dart';

class EmailFormatter extends TextInputFormatter {
  const EmailFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) =>
      TextEditingValue(text: newValue.text.toLowerCase(), composing: newValue.composing, selection: newValue.selection);
}
