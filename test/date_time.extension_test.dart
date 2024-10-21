import 'package:coo_extensions/coo_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateTimeExtension', () {
    test('isToday should return true for today\'s date', () {
      // Arrange
      DateTime today = DateTime.now();

      // Act
      bool result = today.isToday;

      // Assert
      expect(result, isTrue);
    });

    test('isYesterday should return true for yesterday\'s date', () {
      // Arrange
      DateTime yesterday = DateTime.now().subtract(const Duration(days: 1));

      // Act
      bool result = yesterday.isYesterday;

      // Assert
      expect(result, isTrue);
    });

    test('isThisYear should return true for the same year as the current date',
        () {
      // Arrange
      DateTime now = DateTime.now();

      // Act
      bool result = now.isThisYear;

      // Assert
      expect(result, isTrue);
    });

    test(
        'isThisYear should return false for a different year than the current date',
        () {
      // Arrange
      DateTime otherYear = DateTime.now().subtract(const Duration(days: 365));

      // Act
      bool result = otherYear.isThisYear;

      // Assert
      expect(result, isFalse);
    });

    group('isSameYear', () {
  test('should return true when comparing dates from the same year', () {
    // Arrange
    final date1 = DateTime(2024, 1, 1);
    final date2 = DateTime(2024, 12, 31);

    // Act
    final result = date1.isSameYear(date2);

    // Assert
    expect(result, true);
  });

  test('should return false when comparing dates from different years', () {
    // Arrange
    final date1 = DateTime(2024, 1, 1);
    final date2 = DateTime(2023, 1, 1);

    // Act
    final result = date1.isSameYear(date2);

    // Assert
    expect(result, false);
  });
});

group('isSameMonth', () {
  test('should return true when comparing dates from the same year and month', () {
    // Arrange
    final date1 = DateTime(2024, 3, 1);
    final date2 = DateTime(2024, 3, 31);

    // Act
    final result = date1.isSameMonth(date2);

    // Assert
    expect(result, true);
  });

  test('should return false when comparing dates from different months', () {
    // Arrange
    final date1 = DateTime(2024, 3, 1);
    final date2 = DateTime(2024, 4, 1);

    // Act
    final result = date1.isSameMonth(date2);

    // Assert
    expect(result, false);
  });

  test('should return false when comparing dates from same month but different years', () {
    // Arrange
    final date1 = DateTime(2024, 3, 1);
    final date2 = DateTime(2023, 3, 1);

    // Act
    final result = date1.isSameMonth(date2);

    // Assert
    expect(result, false);
  });
});

group('isSameDay', () {
  test('should return true when comparing dates from the same year, month and day', () {
    // Arrange
    final date1 = DateTime(2024, 3, 15, 10, 30);
    final date2 = DateTime(2024, 3, 15, 14, 45);

    // Act
    final result = date1.isSameDay(date2);

    // Assert
    expect(result, true);
  });

  test('should return false when comparing dates from different days', () {
    // Arrange
    final date1 = DateTime(2024, 3, 15);
    final date2 = DateTime(2024, 3, 16);

    // Act
    final result = date1.isSameDay(date2);

    // Assert
    expect(result, false);
  });

  test('should return false when comparing dates from same day but different months', () {
    // Arrange
    final date1 = DateTime(2024, 3, 15);
    final date2 = DateTime(2024, 4, 15);

    // Act
    final result = date1.isSameDay(date2);

    // Assert
    expect(result, false);
  });

  test('should return false when comparing dates from same day and month but different years', () {
    // Arrange
    final date1 = DateTime(2024, 3, 15);
    final date2 = DateTime(2023, 3, 15);

    // Act
    final result = date1.isSameDay(date2);

    // Assert
    expect(result, false);
  });
});

    group('isBeforeOrEqualTo or isAfterOrEqualTo', () {
      test('if date is not after CurrentDate', () {
        final curDate = DateTime(2024, 1, 1);
        final testDate = DateTime(2024, 1, 2);

        final result = curDate.isAfterOrEqual(testDate);
        expect(result, false);
      });

      test('if date is after CurrentDate', () {
        final curDate = DateTime(2024, 1, 3);
        final testDate = DateTime(2024, 1, 2);

        final result = curDate.isAfterOrEqual(testDate);
        expect(result, true);
      });

      test('if date is equals CurrentDate', () {
        final curDate = DateTime(2024, 1, 2);
        final testDate = DateTime(2024, 1, 2);

        final result = curDate.isAfterOrEqual(testDate);
        expect(result, true);
      });

      test('if date is not before CurrentDate', () {
        final curDate = DateTime(2024, 1, 1);
        final testDate = DateTime(2024, 1, 2);

        final result = curDate.isBeforeOrEqual(testDate);
        expect(result, true);
      });

      test('if date is before CurrentDate', () {
        final curDate = DateTime(2024, 1, 3);
        final testDate = DateTime(2024, 1, 2);

        final result = curDate.isBeforeOrEqual(testDate);
        expect(result, false);
      });

      test('if date is equals CurrentDate', () {
        final curDate = DateTime(2024, 1, 2);
        final testDate = DateTime(2024, 1, 2);

        final result = curDate.isBeforeOrEqual(testDate);
        expect(result, true);
      });
    });

    group('isBetween', () {
      test('current date is not in between two dates', () {
        final curDate = DateTime(2024, 1, 1);
        final fromDate = DateTime(2024, 1, 2);
        final untilDate = DateTime(2024, 1, 4);

        expect(curDate.isBetween(fromDate, untilDate), false);
      });

      test('current date is in between two dates', () {
        final curDate = DateTime(2024, 1, 2);
        final fromDate = DateTime(2024, 1, 2);
        final untilDate = DateTime(2024, 1, 4);

        expect(curDate.isBetween(fromDate, untilDate), true);
      });
    });
  });
}
