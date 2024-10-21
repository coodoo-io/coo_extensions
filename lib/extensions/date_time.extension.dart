/// Extension on the DateTime class providing additional functionality related to date and time.
extension DateTimeExtension on DateTime {
  /// Indicates whether the DateTime object represents today's date.
  bool get isToday {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  /// Indicates whether the DateTime object represents yesterday's date.
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }

  /// Indicates whether the DateTime object belongs to the same year as the current date and time.
  bool get isThisYear {
    return DateTime.now().year == year;
  }

  /// Indicates whether two DateTime objects are in the same year.
  bool isSameYear(DateTime date) {
    return year == date.year;
  }

  /// Indicates whether two DateTime objects are in the same month.
  bool isSameMonth(DateTime date) {
    return year == date.year && month == date.month;
  }

  /// Indicates whether two DateTime objects are on the same day.
  bool isSameDay(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  /// Checks if the current DateTime instance is after or equal to the given [dateTime].
  /// Returns `true` if it is, `false` otherwise.
  bool isAfterOrEqual(DateTime dateTime) {
    final isAtSameMomentAs = dateTime.isAtSameMomentAs(this);
    return isAtSameMomentAs | isAfter(dateTime);
  }

  /// Checks if the current DateTime instance is before or equal to the given [dateTime].
  /// Returns `true` if it is, `false` otherwise.
  bool isBeforeOrEqual(DateTime dateTime) {
    final isAtSameMomentAs = dateTime.isAtSameMomentAs(this);
    return isAtSameMomentAs | isBefore(dateTime);
  }

  /// Checks if the current DateTime instance falls between the provided [fromDateTime] and [toDateTime].
  ///
  /// Returns `true` if the current DateTime instance is after or equal to [fromDateTime]
  /// and before or equal to [toDateTime], otherwise returns `false`.
  ///
  /// This method internally uses [isAfterOrEqual] and [isBeforeOrEqual] methods to determine
  /// if the current DateTime instance is within the specified range.
  bool isBetween(
    DateTime fromDateTime,
    DateTime toDateTime,
  ) {
    final isAfter = isAfterOrEqual(fromDateTime);
    final isBefore = isBeforeOrEqual(toDateTime);
    return isAfter && isBefore;
  }
}
