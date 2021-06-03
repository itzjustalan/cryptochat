import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<ThemeData>((ref) {
  return ThemeData(
      primaryColor: Color(0xff4af626),
      accentColor: Color(0xff4af626),
      canvasColor: Color(0xff000000),
      iconTheme: IconThemeData(
        color: Color(0xff4af626),
      ),
      textTheme: TextTheme(
      ).apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Color(0xff4af626),
      ),
    );
});
