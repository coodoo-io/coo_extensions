extension NumberExtension on num? {
  bool isBetween(num from, num to) {
    if (this == null) {
      return false;
    }
    return from <= this! && this! <= to;
  }
}
