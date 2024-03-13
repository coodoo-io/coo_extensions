/// Extension on the num? class providing additional functionality related to numbers.
extension NumberExtension on num? {
  /// Method to check if the number falls within a specified range.
  /// Returns true if the number is between 'from' and 'to', inclusive; false otherwise.
  bool isBetween(num from, num to) {
    if (this == null) {
      return false;
    }
    return from <= this! && this! <= to;
  }
}
