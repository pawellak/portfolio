import 'package:components_core/utilis/app_constants.dart' show AppConstants;

extension NullableStringExtensions on String? {
  bool get isNotNullOrEmpty => this?.isNotEmpty ?? false;

  bool get isNullOrEmpty => this?.isEmpty ?? true;

  String get emptyIfNull => this ?? AppConstants.emptyString;
}
