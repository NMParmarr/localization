class Language {
  final int id;
  final String flag;
  final String name;
  final String langCode;

  Language(this.id, this.flag, this.name, this.langCode);

  static List<Language> languageList() => <Language>[
        Language(1, '🇮🇳', 'English', 'en'),
        Language(2, '🇮🇶', 'إنجليزي', 'ar'),
      ];
}
