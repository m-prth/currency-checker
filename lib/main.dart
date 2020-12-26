import 'package:flutter/material.dart';
import 'package:currency_checker/splash_screen.dart';
import 'package:currency_checker/currency_check.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: CurrencyCheck.app_title,
      theme: ThemeData(
        primarySwatch: CurrencyCheck.primarySwatch,
      ),
      home: MySplash(),
    );
  }
}
