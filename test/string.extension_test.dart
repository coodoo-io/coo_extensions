// ignore_for_file: avoid_init_to_null

import 'package:coo_extensions/coo_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringExtension', () {
    test('isNullOrEmpty should return true for null string', () {
      // Arrange
      String? str = null;

      // Act
      bool result = str.isNullOrEmpty;

      // Assert
      expect(result, isTrue);
    });

    test('isNullOrEmpty should return true for empty string', () {
      // Arrange
      String? str = '';

      // Act
      bool result = str.isNullOrEmpty;

      // Assert
      expect(result, isTrue);
    });

    test(
        'isNullOrEmpty should return true for string with only whitespace characters',
        () {
      // Arrange
      String? str = '   ';

      // Act
      bool result = str.isNullOrEmpty;

      // Assert
      expect(result, isTrue);
    });

    test('isNullOrEmpty should return false for non-empty string', () {
      // Arrange
      String? str = 'Hello';

      // Act
      bool result = str.isNullOrEmpty;

      // Assert
      expect(result, isFalse);
    });

    test('obscureText should replace all characters but spaces with stars', () {
      // Arrange
      String? str = 'Hello World';

      // Act
      String result = str.obscureText();

      // Assert
      expect(result, '***** *****');
    });

    test(
        'obscureTextSegment should replace segment with obscureTextd characters',
        () {
      // Arrange
      String? str = 'The secret is 12345';
      String segment = '12345';

      // Act
      String result = str.obscureTextSegment(segment);

      // Assert
      expect(result, 'The secret is *****');
    });

    test(
        'obscureTextSegment should replace segment with custom obscureTextd characters',
        () {
      // Arrange
      String? str = 'The secret is 12345';
      String segment = '12345';

      // Act
      String result = str.obscureTextSegment(segment, replacement: '#');

      // Assert
      expect(result, 'The secret is #####');
    });
  });
}
