import 'package:flutter/material.dart';
import 'package:localization/views/home_page.dart';
import 'package:localization/views/splash_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String homePage = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        throw const FormatException("Route Not Found..!!");
    }
  }
}

class RouteException implements Exception {
  final String message;
  RouteException(this.message);
}
