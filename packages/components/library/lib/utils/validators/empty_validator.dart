import 'package:components_library/utils/validators/base_validator.dart';

const _labelKey = 'error.validator.field_required';

class EmptyValidator extends BaseValidator {
  const EmptyValidator() : super(errorMessageKey: _labelKey);

  @override
  bool isValidate(String text) => text.isNotEmpty;
}
