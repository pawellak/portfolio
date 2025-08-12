import 'package:flutter/services.dart';

class RegExpFormatter extends TextInputFormatter {
  const RegExpFormatter(this.regExp);

  final String regExp;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (RegExp(regExp).hasMatch(newValue.text) || newValue.text.isEmpty) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}
