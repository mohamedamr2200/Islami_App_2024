import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Colors.white;
  static Color goldColor = Color(0xFFB7935F);
  static Color amiri = MyTheme.amiri;
  static ThemeData lightTheme = ThemeData(
    primaryColor: goldColor,
    //scaffoldBackgroundColor: Colors.transparent,
    // canvasColor: goldColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // selectedItemColor: blackColor,
        //unselectedItemColor: whiteColor,
        ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: blackColor),
        titleMedium: TextStyle(
            fontSize: 20, color: blackColor, fontWeight: FontWeight.w600)),
  );
  static ThemeData darkTheme = ThemeData();
}
