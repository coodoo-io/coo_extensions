/// Extension on the String? class providing additional functionality related to strings.
extension StringExtension on String? {
  /// Checks if the string is null, empty, or contains only whitespace characters.
  bool get isNullOrEmpty => (this == null || this?.trim() == '');

  /// Replaces all characters but spaces in this string with stars (default [replacement] is '*')
  String obscure({String replacement = '*'}) {
    if (this == null) {
      return '';
    }
    return this!.replaceAll(RegExp('[^ ]'), replacement);
  }

  /// Makes the [secret] in a string unrecognizable by replacing all characters but spaces in this string with stars (default [replacement] is '*')
  String obscureSecret(String secret, {String replacement = '*'}) {
    if (this == null) {
      return '';
    }
    return this!.replaceAll(secret, secret.obscure(replacement: replacement));
  }
}
