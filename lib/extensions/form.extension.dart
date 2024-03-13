import 'package:flutter/material.dart';

/// Extension on the GlobalKey<FormState> class providing additional functionality.
extension FormExtension on GlobalKey<FormState> {
  /// Indicates whether the form associated with the GlobalKey<FormState> is valid.
  bool get isValid {
    return currentState != null && currentState!.validate();
  }
}
