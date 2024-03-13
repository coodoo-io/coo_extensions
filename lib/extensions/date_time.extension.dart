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
  bool get isSameYear {
    return DateTime.now().year == year;
  }
}
