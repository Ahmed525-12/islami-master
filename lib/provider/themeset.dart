import 'package:flutter/material.dart';
import 'package:islami/themes.dart';

class Themeprovider extends ChangeNotifier {
  ThemeMode thememode = ThemeMode.dark;
  void changetheme(ThemeMode mode) {
    thememode = mode;
    notifyListeners();
  }

  bool isDark() {
    return thememode == ThemeMode.dark;
  }
}
