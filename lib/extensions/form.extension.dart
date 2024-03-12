import 'package:flutter/material.dart';

extension FormExtension on GlobalKey<FormState> {
  bool get isValid {
    return currentState != null && currentState!.validate();
  }
}
