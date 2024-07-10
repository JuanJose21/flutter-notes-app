import 'package:flutter/material.dart';

class Navigation {
  static void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
