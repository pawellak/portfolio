import 'package:components_core/utilis/app_constants.dart' show AppConstants;

abstract class BaseValidator {
  const BaseValidator({this.errorMessageKey = AppConstants.emptyString});

  final String errorMessageKey;

  bool isValidate(String text);
}
