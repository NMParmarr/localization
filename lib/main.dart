import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization/providers/language_provider.dart';
import 'package:localization/providers/splash_provider.dart';
import 'package:localization/resourses/languages/share_preferences.dart';
import 'package:localization/routegenerator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SplashIconProvider>(
            create: (_) => SplashIconProvider()),
        ChangeNotifierProvider<LanguageProvider>(
            create: (_) => LanguageProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String title = "Neon App";

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(builder: (context, provider, _) {
      return FutureBuilder(
          future: getLocale(),
          builder: (context, shapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: title,
              theme: myTheme(),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: shapshot.data,
              initialRoute: RouteGenerator.splashScreen,
              onGenerateRoute: RouteGenerator.generateRoute,
            );
          });
    });
  }

  ThemeData myTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      useMaterial3: true,
      primaryColor: Colors.tealAccent,
    );
  }
}
