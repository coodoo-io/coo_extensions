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

    test('isSameYear should return true for the same year as the current date', () {
      // Arrange
      DateTime now = DateTime.now();

      // Act
      bool result = now.isSameYear;

      // Assert
      expect(result, isTrue);
    });

    test('isSameYear should return false for a different year than the current date', () {
      // Arrange
      DateTime otherYear = DateTime.now().subtract(const Duration(days: 365));

      // Act
      bool result = otherYear.isSameYear;

      // Assert
      expect(result, isFalse);
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
