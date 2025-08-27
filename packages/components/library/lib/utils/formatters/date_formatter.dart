import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/utilis/app_constants.dart';

const dateFormatDDMMYYYY = 'dd.MM.yyyy';

abstract class DateFormatter {
  const DateFormatter();

  static String formatDate(DateTime? dateTime, String format) {
    try {
      if (dateTime == null) {
        return AppConstants.emptyString;
      }
      return DateFormat(format).format(dateTime);
    } catch (_) {
      return AppConstants.emptyString;
    }
  }

  static String formatDateRange({
    required DateTime? dateTimeStart,
    required DateTime? dateTimeEnd,
    required String format,
  }) {
    return '${_dateTimeToString(dateTimeStart, format)} - ${_dateTimeToString(dateTimeEnd, format)}';
  }

  static String _dateTimeToString(DateTime? time, String format) {
    if (time == null) {
      return DateFormat(format).format(DateTime.now());
    } else {
      return DateFormat(format).format(time);
    }
  }
}
