import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier {
  static bool darktheme = true;

  ThemeMode checktheme() {
    return darktheme ? ThemeMode.dark : ThemeMode.light;
  }

  void swicththeme() {
    darktheme = !darktheme;
    notifyListeners();
  }
}
