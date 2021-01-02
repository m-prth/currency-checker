import 'package:currency_checker/splash_screen.dart';
import 'package:currency_checker/utils/currency_check.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: CurrencyCheck.app_title,
      theme: ThemeData(
        primarySwatch: CurrencyCheck.primarySwatch,
      ),
      home: MySplash(),
    );
  }
}
