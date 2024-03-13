import 'package:coo_extensions/coo_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringExtension', () {
    test('isNullOrEmpty should return true for null string', () {
      // Arrange
      // ignore: avoid_init_to_null
      String? nullString = null;

      // Act
      bool result = nullString.isNullOrEmpty;

      // Assert
      expect(result, isTrue);
    });

    test('isNullOrEmpty should return true for empty string', () {
      // Arrange
      String? emptyString = '';

      // Act
      bool result = emptyString.isNullOrEmpty;

      // Assert
      expect(result, isTrue);
    });

    test('isNullOrEmpty should return true for whitespace-only string', () {
      // Arrange
      String? whitespaceString = '   ';

      // Act
      bool result = whitespaceString.isNullOrEmpty;

      // Assert
      expect(result, isTrue);
    });

    test('isNullOrEmpty should return false for non-empty string', () {
      // Arrange
      String? nonEmptyString = 'Hello';

      // Act
      bool result = nonEmptyString.isNullOrEmpty;

      // Assert
      expect(result, isFalse);
    });
  });
}
