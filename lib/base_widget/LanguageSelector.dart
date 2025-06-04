
import 'package:flutter/material.dart';

class LanguageSelectorApp extends StatefulWidget {
  @override
  _LanguageSelectorAppState createState() => _LanguageSelectorAppState();
}

class _LanguageSelectorAppState extends State<LanguageSelectorApp> {
  String selectedLanguage = 'English';

  final List<String> languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Chinese',
    'Japanese',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Selector',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Language Selector')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected Language:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                selectedLanguage,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              DropdownButton<String>(
                value: selectedLanguage,
                onChanged: (newLang) {
                  setState(() {
                    selectedLanguage = newLang!;
                  });
                },
                items: languages
                    .map(
                      (lang) => DropdownMenuItem(
                        child: Text(lang),
                        value: lang,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}