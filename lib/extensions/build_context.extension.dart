import 'package:flutter/material.dart';

/// Extension on the BuildContext class providing additional functionality related to UI building.
extension BuildContextExtension on BuildContext {
  /// Indicates whether the app is currently in light mode.
  bool get isLightMode =>
      Theme.of(this).brightness ==
      Brightness.light;

  /// Indicates whether the app is currently in dark mode.
  bool get isDarkMode =>
      Theme.of(this).brightness ==
      Brightness.dark;

  /// Retrieves the width of the device screen.
  double get deviceWidth => MediaQuery.sizeOf(this).width;

  /// Retrieves the height of the device screen.
  double get deviceHeight => MediaQuery.sizeOf(this).height;
}
