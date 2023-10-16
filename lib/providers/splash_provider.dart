import 'package:flutter/material.dart';

class SplashIconProvider extends ChangeNotifier {
  double radius = 5.0;
  void increseRadius() {
    radius = 80;
    notifyListeners();
  }
}
