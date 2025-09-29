


import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light ;
  ThemeMode get themeMode => _themeMode;
  void setTheme(ThemeMode mode){
       _themeMode = mode  ;
    notifyListeners();
  }
}