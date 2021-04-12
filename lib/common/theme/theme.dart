import 'package:flutter/material.dart';

abstract class LightTheme {
  static const bodyFontSize = 18.0;
  static const bodyTextStyle = TextStyle(
      fontSize: bodyFontSize,
      fontWeight: FontWeight.normal);

  // code
  static const codeBgColor = Color(0xFFf5f7f9);
  static const blueTextColor = Color(0xFF005cc5);
  static const blueTextStyle = TextStyle(
      color: blueTextColor,
      fontSize: bodyFontSize,
      fontWeight: FontWeight.normal);

  static const purpleTextColor = Color(0xFF6f42c1);
  static const purpleTextStyle = TextStyle(
      color: purpleTextColor,
      fontSize: bodyFontSize,
      fontWeight: FontWeight.normal);

  static const codeHintTextColor = Color(0xFF6a737d);
  static const codeHintTextStyle = TextStyle(
      color: codeHintTextColor,
      fontSize: bodyFontSize,
      fontWeight: FontWeight.normal);

  static const codeRedTextColor = Color(0xFFd73a49);
  static const codeRedTextStyle = TextStyle(
      color: codeRedTextColor,
      fontSize: bodyFontSize,
      fontWeight: FontWeight.normal);
}
