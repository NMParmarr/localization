import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String LANG_CODE = 'langCode';

//languages constants
const String ENGLISH = 'en';
const String ARABIC = 'ar';

Future<Locale> setLocale(String langCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setString(LANG_CODE, langCode);
  return _locale(langCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String langCode = _prefs.getString(LANG_CODE) ?? ENGLISH;
  return _locale(langCode);
}

_locale(String langCode) {
  switch (langCode) {
    case ENGLISH:
      return Locale(ENGLISH);
    case ARABIC:
      return Locale(ARABIC);
    default:
      return Locale(ENGLISH);
  }
}

AppLocalizations tr(context) => AppLocalizations.of(context)!;
