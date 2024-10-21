import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// Extension on the BuildContext class providing additional functionality related to UI building.
extension BuildContextExtension on BuildContext {
  /// Indicates whether the app is currently in light mode.
  bool get isLightMode =>
      WidgetsBinding.instance.platformDispatcher.platformBrightness ==
      Brightness.light;

  /// Indicates whether the app is currently in dark mode.
  bool get isDarkMode =>
      WidgetsBinding.instance.platformDispatcher.platformBrightness ==
      Brightness.dark;

  /// Retrieves the width of the device screen.
  double get deviceWidth => MediaQuery.sizeOf(this).width;

  /// Retrieves the height of the device screen.
  double get deviceHeight => MediaQuery.sizeOf(this).height;
}
