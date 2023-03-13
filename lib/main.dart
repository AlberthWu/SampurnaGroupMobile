import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/Final_Menu/final_menu.dart';
import 'package:sampurnagroupmobile/Final_Menu/history_page.dart';
import 'package:sampurnagroupmobile/Final_Menu/menu.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'Local Auth';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nexa',
      primaryColor: Constants.primaryColor,
      ),
      home: history(),
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', 'US')],
    );
  }
}

