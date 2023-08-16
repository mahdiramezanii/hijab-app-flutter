import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'),
      ],
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "dana",
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Colors.black
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScrean(),
    );
  }
}
