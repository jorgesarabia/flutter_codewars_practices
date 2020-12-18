import 'package:flutter/material.dart';

class Styles {
  static const normal = TextStyle(
    fontSize: 20,
    color: Color(0xFFFFFFFF),
  );

  static TextSpan blue(String text, {double fontSize = 14.0}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: fontSize,
        color: Color(0xFFBBDEFB),
      ),
    );
  }

  static TextSpan white(String text, {double fontSize = 14.0}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: fontSize,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  static TextSpan purple(String text, {double fontSize = 14.0}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: fontSize,
        color: Color(0xFFD500F9),
      ),
    );
  }

  static TextSpan orange(String text, {double fontSize = 14.0}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: fontSize,
        color: Color(0xFFD84315),
      ),
    );
  }

  static TextSpan green(String text, {double fontSize = 14.0}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.green,
      ),
    );
  }
}
