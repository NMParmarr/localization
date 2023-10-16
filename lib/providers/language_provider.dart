import 'package:flutter/material.dart';
import 'package:localization/resourses/languages/share_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  Locale? locale;

  void setLocale() async {
    locale = await getLocale();
    notifyListeners();
  }
}
