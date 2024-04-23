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
    return yesterday.day == day && yesterday.month == month && yesterday.year == year;
  }

  /// Indicates whether the DateTime object belongs to the same year as the current date and time.
  bool get isSameYear {
    return DateTime.now().year == year;
  }

  bool isAfterOrEqual(DateTime dateTime) {
    final isAtSameMomentAs = dateTime.isAtSameMomentAs(this);
    return isAtSameMomentAs | isAfter(dateTime);
  }

  bool isBeforeOrEqual(DateTime dateTime) {
    final isAtSameMomentAs = dateTime.isAtSameMomentAs(this);
    return isAtSameMomentAs | isBefore(dateTime);
  }

  bool isBetween(
    DateTime fromDateTime,
    DateTime toDateTime,
  ) {
    final isAfter = isAfterOrEqual(fromDateTime);
    final isBefore = isBeforeOrEqual(toDateTime);
    return isAfter && isBefore;
  }
}
