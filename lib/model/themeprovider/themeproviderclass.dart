import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeDataProvider extends ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  void changeTheme(ThemeMode mode){
    _themeMode = mode;
    notifyListeners();

  }
}