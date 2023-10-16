import 'package:flutter/material.dart';
import 'package:localization/resourses/languages/languages.dart';
import 'package:localization/utils/my_text_util.dart';

class Utils extends AppBar {
  static AppBar appbar = AppBar(
    backgroundColor: Colors.tealAccent,
    title: MyText(text: "Appbar Title"),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.all(8),
        child: DropdownButton<Language>(
            icon: Icon(
              Icons.language,
              color: Colors.black,
            ),
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(e.flag),
                        Text(e.name),
                      ],
                    ),
                  ),
                )
                .toList(),
            onChanged: (Language? language) {}),
      )
    ],
  );
}
