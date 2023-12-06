import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/theme_color/common/util/theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  MaterialColor _primaryColor = Colors.blue;

  bool get isDarkMode => _isDarkMode;
  MaterialColor get primaryColor => _primaryColor;

  ThemeData getCurrentTheme() {
    //return _isDarkMode ? ThemeData.dark().copyWith(appBarTheme: AppBarTheme(backgroundColor: _primaryColor)) : ThemeData.light().copyWith(appBarTheme: AppBarTheme(backgroundColor: _primaryColor));
    return _isDarkMode ? MyTheme.darkTheme(_primaryColor) : MyTheme.lightTheme(_primaryColor);
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void changePrimaryColor(MaterialColor color) {
    _primaryColor = color;
    notifyListeners();
  }
}