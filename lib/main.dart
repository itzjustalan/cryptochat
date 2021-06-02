import 'package:cryptochat/pages/lockScreen.dart';
import 'package:cryptochat/providers/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}
class MyApp extends ConsumerWidget {
  @override
  Widget build(context, watch) {
    ThemeData appTheme = watch(themeProvider).state;
    return MaterialApp(
      //theme: AppTheme.lightTheme,
      theme: appTheme,
      darkTheme: appTheme,
      //themeMode: appThemeMode,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: LockScreen(),
    );
  }
}
