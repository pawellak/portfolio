import 'package:components_library/utils/validators/base_validator.dart';
import 'package:components_library/widgets/text_field/controllers/text_field_controller.dart';

import 'package:flutter/material.dart';

@immutable
class EqualsValidator extends BaseValidator {
  const EqualsValidator({required this.matchController, super.errorMessageKey});

  final TextFieldController matchController;

  @override
  bool isValidate(String text) {
    final result = text == matchController.text;
    if (result) {
      matchController.isValidate(ignoreEquals: true);
    }
    return result;
  }
}
