import 'dart:async';
import 'package:components_core/utilis/app_constants.dart';
import 'package:components_library/utils/validators/base_validator.dart';
import 'package:components_library/utils/validators/equals_validator.dart';
import 'package:flutter/material.dart';

class TextFieldController {
  TextFieldController({
    List<BaseValidator> validators = const [],
  }) : _validators = validators;

  final List<BaseValidator> _validators;
  String? _lastErrorMessageKey;
  bool _isValidatorAdded = false;

  final TextEditingController _textController = TextEditingController();
  late final StreamController<String>? _streamController = _getStreamController();

  void addValidator(BaseValidator validator) => _validators.add(validator);

  StreamController<String>? _getStreamController() =>
      _validators.isNotEmpty ? StreamController<String>.broadcast() : null;

  TextEditingController get textController => _textController;



  StreamController<String>? get streamController => _streamController;

  String get text => textController.text;

  set text(String text) => textController.text = text;

  ///Trigger validator on every value update. It's usefully when stream is used
  void _addValidationListenerIfNotAdded() {
    if (_isValidatorAdded) {
      return;
    }
    _textController.addListener(isValidate);
    _isValidatorAdded = true;
  }

  bool isValidate({bool ignoreEquals = false}) {
    final validatorsSet = ignoreEquals ? _validators.where((validator) => validator is! EqualsValidator) : _validators;
    for (final validator in validatorsSet) {
      if (!validator.isValidate(_textController.text)) {
        _setStreamErrorMessageIfNewMessage(validator);
        _addValidationListenerIfNotAdded();
        return false;
      } else {
        _lastErrorMessageKey = null;
      }
    }

    _clearStreamErrorMessage();
    return true;
  }

  void _setStreamErrorMessageIfNewMessage(BaseValidator validator) {
    final errorMessage = validator.errorMessageKey;
    if (errorMessage != _lastErrorMessageKey) {
      _streamController?.add(validator.errorMessageKey);
      _lastErrorMessageKey = errorMessage;
    }
  }

  void _clearStreamErrorMessage() => _streamController?.add(AppConstants.emptyString);

  void dispose() {
    _streamController?.close();
    _textController.dispose();
  }
}
