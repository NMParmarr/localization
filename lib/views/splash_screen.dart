import 'dart:async';
import 'package:flutter/material.dart';
import 'package:localization/providers/splash_provider.dart';
import 'package:localization/routegenerator.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int x = 1;

  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Provider.of<SplashIconProvider>(context, listen: false).increseRadius();
    });
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteGenerator.homePage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 9),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<SplashIconProvider>(builder: (context, provider, _) {
              return CircleAvatar(
                backgroundColor: Colors.tealAccent,
                radius: provider.radius,
                foregroundImage: const NetworkImage(
                    "https://play-lh.googleusercontent.com/pEZvyjV4HNa9dwxYB4g-YzRVmbtNEwKdo_YpGbkDucVftFAx93gXrXYJYnTaT8TaDg"),
              );
            })
          ],
        )),
      ),
    );
  }
}
