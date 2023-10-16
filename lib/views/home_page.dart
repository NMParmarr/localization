import 'package:flutter/material.dart';
import 'package:localization/utils/custom_utils.dart';
import 'package:localization/utils/my_text_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Utils.appbar,
        body: Container(
          color: Colors.teal,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "Neon Parmar",
                fontSize: 20,
              ),
            ],
          )),
        ));
  }
}
