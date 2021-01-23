import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  static WidgetSpan link(String url, {String label, double fontSize = 14.0}) {
    return WidgetSpan(
      child: GestureDetector(
        onTap: () {
          canLaunch(url).then((value) {
            if (value) {
              launch(url);
            }
          });
        },
        child: Text(
          label ?? url,
          style: TextStyle(
            fontSize: fontSize,
            color: Color(0xFFBBDEFB),
          ),
        ),
      ),
    );
  }
}
