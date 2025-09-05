import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/utilis/app_constants.dart';

const dateFormatDDMMYYYY = 'dd.MM.yyyy';

abstract class DateFormatter {
  const DateFormatter();

  static String formatDateRange({
    required DateTime? dateTimeStart,
    required DateTime? dateTimeEnd,
    required String format,
  }) => '${_dateTimeToString(dateTimeStart, format)} - ${_dateTimeToString(dateTimeEnd, format)}';

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

  static String _dateTimeToString(DateTime? time, String format) {
    if (time == null) {
      return 'label.date_time.now'.tr();
    } else {
      return DateFormat(format).format(time);
    }
  }

  static String formatDateTimeToPeriod(String start, String end) {
    var dateTimeStart = _getDataTimeFromYYYYMM(start);
    var dateTimeEnd = _getDataTimeFromYYYYMM(end);

    if (dateTimeEnd.isBefore(dateTimeStart)) {
      final temp = dateTimeStart;
      dateTimeStart = dateTimeEnd;
      dateTimeEnd = temp;
    }

    int years = dateTimeEnd.year - dateTimeStart.year;
    int months = dateTimeEnd.month - dateTimeStart.month;
    final int days = dateTimeEnd.day - dateTimeStart.day;

    if (days < 0) {
      months--;
    }

    if (months < 0) {
      years--;
      months += 12;
    }

    String formatUnit(int value, String one, String few, String many) {
      if (value == 1) {
        return '$value $one';
      }
      if (value % 10 >= 2 && value % 10 <= 4 && (value % 100 < 10 || value % 100 >= 20)) {
        return '$value $few';
      }
      return '$value $many';
    }

    var yearsString = '';
    if (years > 0) {
      yearsString = formatUnit(
        years,
        'label.date_time.one_year'.tr(),
        'label.date_time.two_years'.tr(),
        'label.date_time.five_years'.tr(),
      );
    }

    var monthsString = '';
    if (months > 0 || (years == 0 && months == 0)) {
      monthsString = formatUnit(
        months,
        'label.date_time.one_month'.tr(),
        'label.date_time.two_months'.tr(),
        'label.date_time.five_months'.tr(),
      );
    }

    if (yearsString.isNotEmpty && monthsString.isNotEmpty && months > 0) {
      return '$yearsString ${monthsString.toLowerCase()}';
    } else if (yearsString.isNotEmpty) {
      return yearsString;
    } else if (monthsString.isNotEmpty) {
      return monthsString;
    } else if (years == 0 && months == 0) {
      return formatUnit(0, 'miesiąc', 'miesiące', 'miesięcy'); // "0 miesięcy"
    } else {
      return '0';
    }
  }

  static DateTime _getDataTimeFromYYYYMM(String end) {
    if (end.isEmpty) {
      return DateTime.now();
    } else {
      final endSplit = end.split('.');
      final endYear = int.tryParse(endSplit[0]) ?? 0;
      final endMonth = int.tryParse(endSplit[1]) ?? 0;
      return DateTime(endYear, endMonth);
    }
  }
}
