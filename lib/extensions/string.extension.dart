extension StringExtension on String? {
  /// Checks for null/empty/blank strings
  bool get isNullOrEmpty => (this == null || this?.trim() == '');
}
