/// Extension on the String? class providing additional functionality related to strings.
extension StringExtension on String? {
  /// Checks if the string is null, empty, or contains only whitespace characters.
  bool get isNullOrEmpty => (this == null || this?.trim() == '');
}
