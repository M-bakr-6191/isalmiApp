import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightprimary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color gold = Color(0xffFACC1D);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightprimary,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: lightprimary,
          selectedItemColor: black,
          unselectedItemColor: white),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)));
  static ThemeData DarkTheme = ThemeData();
}
