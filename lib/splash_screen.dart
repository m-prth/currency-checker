import 'package:currency_checker/currency_check.dart';
import 'package:currency_checker/home.dart';
import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Home(),
      title: Text(
        CurrencyCheck.app_title,
        style: CurrencyCheck.headingStyle,
      ),
      image: Image.asset(CurrencyCheck.logoPath),
      backgroundColor: CurrencyCheck.splashBgColor,
      photoSize: 50,
      loaderColor: CurrencyCheck.loaderColor,
    );
  }
}
