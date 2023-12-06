import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(MaterialColor primaryColor) {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: primaryColor)
      // Otros atributos del tema
    );
  }

  static ThemeData darkTheme(MaterialColor primaryColor) {
    return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: primaryColor)
      // Otros atributos del tema
    );
  }
}