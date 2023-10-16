import 'package:flutter/material.dart';
import 'package:localization/providers/language_provider.dart';
import 'package:localization/resourses/languages/languages.dart';
import 'package:localization/resourses/languages/share_preferences.dart';
import 'package:localization/utils/my_text_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Utils extends AppBar {
  static AppBar appbar(context) => AppBar(
        backgroundColor: Colors.tealAccent,
        title: MyText(text: AppLocalizations.of(context)!.appbarTitle),
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
                onChanged: (Language? language) async {
                  if (language != null) {
                    setLocale(language.langCode);
                    Provider.of<LanguageProvider>(context, listen: false)
                        .setLocale();
                  }
                }),
          )
        ],
      );
}
