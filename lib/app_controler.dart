import 'package:flutter/cupertino.dart';

class AppControler extends ChangeNotifier {
  bool isDarkTheme = true;
  static AppControler instance = AppControler();
  changeTema() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
