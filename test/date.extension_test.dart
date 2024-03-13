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

    test('isSameYear should return true for the same year as the current date',
        () {
      // Arrange
      DateTime now = DateTime.now();

      // Act
      bool result = now.isSameYear;

      // Assert
      expect(result, isTrue);
    });

    test(
        'isSameYear should return false for a different year than the current date',
        () {
      // Arrange
      DateTime otherYear = DateTime.now().subtract(const Duration(days: 365));

      // Act
      bool result = otherYear.isSameYear;

      // Assert
      expect(result, isFalse);
    });
  });
}
