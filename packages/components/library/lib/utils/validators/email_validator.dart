import 'package:components_library/utils/validators/base_validator.dart' show BaseValidator;

const _emailRegExp = r'^\S+@+\S+\.+\S+.*';
const _labelKey = 'error.validator.incorrect_email_format';

class EmailValidator extends BaseValidator {
  const EmailValidator() : super(errorMessageKey: _labelKey);

  @override
  bool isValidate(String text) => RegExp(_emailRegExp).hasMatch(text);
}
