import 'package:flutter/material.dart';
import 'package:localization/resourses/languages/share_preferences.dart';
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
        appBar: Utils.appbar(context),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              MyText(
                text: tr(context).appbarTitle,
                fontSize: 20,
              ),
              MyText(
                text: tr(context).neonParmar,
                fontSize: 20,
              ),
              MyText(
                text: tr(context).neonParmar,
                fontSize: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => DatePickerDialog(
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2024)));
                  },
                  child: MyText(text: tr(context).chooseDate))
            ],
          ),
        ));
  }
}
