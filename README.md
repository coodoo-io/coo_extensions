# coo_extension

**coo(l) extensions!**
A set of commonly used Dart/Flutter extension to ease development.

## Extensions

**[StringExtension](./lib/extensions/string.extension.dart)**
   - Adds functionality to the `String?` class.
   - Provides a method `isNullOrEmpty` to check if a string is null, empty, or contains only whitespace characters.

**[DateTimeExtension](./lib/extensions/date_time.extension.dart)**
   - Adds functionality to the `DateTime` class.
   - Provides getters `isToday`, `isYesterday`, and `isSameYear` to check if a `DateTime` object represents today's date, yesterday's date, or belongs to the same year as the current date and time, respectively.

**[BuildContextExtension](./lib/extensions/build_context.extension.dart)**
   - Adds functionality to the `BuildContext` class.
   - Provides getters `isLightMode` and `isDarkMode` to check if the app is currently in light or dark mode, respectively.
   - Provides getters `deviceWidth` and `deviceHeight` to retrieve the width and height of the device screen, respectively.

**[NumberExtension](./lib/extensions/number.extension.dart)**
   - Adds functionality to the `num?` class.
   - Provides a method `isBetween` to check if a number falls within a specified range.

**[FormExtension](./lib/extensions/form.extension.dart)**
   - Adds functionality to the `GlobalKey<FormState>` class.
   - Provides a getter `isValid` to check if the form associated with the `GlobalKey<FormState>` is valid.
