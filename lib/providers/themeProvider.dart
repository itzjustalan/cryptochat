import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<ThemeData>((ref) {
  return ThemeData(
      primaryColor: Colors.green,
      accentColor: Color(0xff4af626),
      canvasColor: Color(0xff000000),
      //cursorColor: Color(0xff4af626),
      iconTheme: IconThemeData(
        color: Color(0xff999999),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Color(0xff4af626),
      ),
    );
});
