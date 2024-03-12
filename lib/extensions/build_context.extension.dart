import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

extension BuildContextExtension on BuildContext {
  bool get isLightMode => WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.light;
  bool get isDarkMode => WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
}
