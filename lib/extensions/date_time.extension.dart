extension DateTimeExtension on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day && yesterday.month == month && yesterday.year == year;
  }

  bool get isSameYear {
    return DateTime.now().year == year;
  }

  int get weekOfYear {
    // Datum auf Mitternacht setzen
    DateTime date = DateTime(year, month, day);

    // Berechne die differenz zum Beginn des Jahres
    int dayOfYear = date.difference(DateTime(year, 1, 1)).inDays + 1;

    // Wochendtag des 1. Januar (1 = Montag, 7 = Sonntag).
    int weekdayOfFirstDay = DateTime(year, 1, 1).weekday;

    // Korrigiere zum ISO 8601-Format (Montag = 0, Sonntag = 6).
    weekdayOfFirstDay--;

    // Berechne die ISO-Woche.
    int weekNumber = ((dayOfYear - weekdayOfFirstDay + 10) / 7).floor();

    if (weekNumber < 1) {
      // Die Woche gehört zum letzten Jahr.
      return DateTime(year - 1, 12, 31).weekOfYear;
    } else if (weekNumber > 52) {
      // Prüfe, ob die Woche zum nächsten Jahr gehört.
      int daysInYear = DateTime(year, 12, 31).difference(DateTime(year, 1, 1)).inDays + 1;
      int threshold = (daysInYear - 31 + weekdayOfFirstDay - 10) ~/ 7;
      if (weekNumber > threshold) return 1;
    }
    return weekNumber;
  }
}
