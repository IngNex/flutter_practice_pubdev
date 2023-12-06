import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  static var lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
  );
  static var darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
  );

  ThemeData _currentTheme = lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme = _currentTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }

  void updatePrimaryColor(Color color) {
    if (_currentTheme == lightTheme) {
      lightTheme = lightTheme.copyWith(primaryColor: color);
    } else {
      darkTheme = darkTheme.copyWith(primaryColor: color);
    }
    notifyListeners();
  }
}