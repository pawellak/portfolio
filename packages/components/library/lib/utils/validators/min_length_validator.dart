import 'package:components_library/utils/validators/base_validator.dart' show BaseValidator;

class MinLengthValidator extends BaseValidator {
  const MinLengthValidator({required this.minLength, super.errorMessageKey});

  final int minLength;

  @override
  bool isValidate(String text) => text.length >= minLength;
}
