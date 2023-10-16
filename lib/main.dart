import 'package:flutter/material.dart';
import 'package:localization/providers/splash_provider.dart';
import 'package:localization/routegenerator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SplashIconProvider>(
            create: (_) => SplashIconProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final String title = "Neon App";
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: myTheme(),
      initialRoute: RouteGenerator.splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }

  ThemeData myTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      useMaterial3: true,
      primaryColor: Colors.tealAccent,
    );
  }
}
