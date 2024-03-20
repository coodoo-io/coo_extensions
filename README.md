# coo_extension

**coo(l) extensions!**
A set of commonly used Dart/Flutter extension to ease development.


## Installation

To use this package, add `coo_extension` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  coo_extension: ^0.1.0
```

Then, run `flutter pub get` to install the package.

## Usage

### String Extensions

- `isNullOrEmpty`: Checks if a string is null, empty, or contains only whitespace characters.
- `obscure`: Replaces all characters but spaces in a string with stars (default replacement is '*').
- `obscureSecret`: Makes a secret unrecognizable in a string by replacing all characters but spaces with stars (default replacement is '*').

Example:

```dart
import 'package:coo_extensions/string_extension.dart';

void main() {
  String? str = 'Hello World';

  // Check if the string is null or empty
  print(str.isNullOrEmpty); // Output: false

  // Obscure the string
  print(str.obscure()); // Output: ***** *****
}
```

### DateTime Extensions

- `isToday`: Checks if a DateTime object represents today's date.
- `isYesterday`: Checks if a DateTime object represents yesterday's date.
- `isSameYear`: Checks if a DateTime object belongs to the same year as the current date and time.

Example:

```dart
import 'package:coo_extensions/date_time.extension.dart';

void main() {
  DateTime now = DateTime.now();

  // Check if the DateTime object is today
  print(now.isToday); // Output: true
}
```

### BuildContext Extensions

- `isLightMode`: Checks if the app is currently in light mode.
- `isDarkMode`: Checks if the app is currently in dark mode.
- `deviceWidth`: Retrieves the width of the device screen.
- `deviceHeight`: Retrieves the height of the device screen.

Example:

```dart
import 'package:coo_extensions/build_context.extension.dart';

void main() {
  // Check if the app is in light mode
  print(context.isLightMode); // Output: true
}
```

### Number Extensions

- `isBetween`: Checks if a number falls within a specified range.

Example:

```dart
import 'package:coo_extensions/number.extension.dart';

void main() {
  num? number = 5;

  // Check if the number is between 0 and 10
  print(number.isBetween(0, 10)); // Output: true
}
```

### Form Extensions

- `isValid`: Checks if the form associated with the GlobalKey<FormState> is valid.

Example:

```dart
import 'package:flutter/material.dart';
import 'package:coo_extensions/form.extension.dart';

void main() {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Check if the form is valid
  print(formKey.isValid); // Output: true or false
}
```

## Contribution

Contributions are welcome! Feel free to open an issue or submit a pull request.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
