import 'package:flutter/material.dart';

class SwitchState extends ChangeNotifier {
  bool _value = false;

  bool get value => _value;

  void toggleSwitch() {
    _value = !_value;
    
    notifyListeners();
  }
}