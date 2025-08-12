import 'package:components_library/utils/validators/base_validator.dart' show BaseValidator;

class RegexValidator extends BaseValidator {
  const RegexValidator({required this.regex, super.errorMessageKey});

  final String regex;

  @override
  bool isValidate(String text) => RegExp(regex).hasMatch(text);
}
