import 'package:coo_extensions/coo_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NumberExtension', () {
    test(
        'isBetween should return true if the number is between the specified range',
        () {
      // Arrange
      num? number = 5;
      num from = 0;
      num to = 10;

      // Act
      bool result = number.isBetween(from, to);

      // Assert
      expect(result, isTrue);
    });

    test(
        'isBetween should return false if the number is outside the specified range',
        () {
      // Arrange
      num? number = 15;
      num from = 0;
      num to = 10;

      // Act
      bool result = number.isBetween(from, to);

      // Assert
      expect(result, isFalse);
    });

    test('isBetween should return false if the number is null', () {
      // Arrange
      // ignore: avoid_init_to_null
      num? number = null;
      num from = 0;
      num to = 10;

      // Act
      bool result = number.isBetween(from, to);

      // Assert
      expect(result, isFalse);
    });
  });
}
