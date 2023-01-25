import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/onboarding_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:sampurnagroupmobile/page/autocomplete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nexa'),
      home: OnboardingScreen(),
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en', 'US')],
    );
  }
}

