import 'package:currency_checker/home.dart';
import 'package:currency_checker/utils/currency_check.dart';
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
      seconds: 2,
      navigateAfterSeconds: Home(),
      title: Text(
        CurrencyCheck.app_title,
        style: CurrencyCheck.headingStyle,
      ),
      loadingText: Text(
        'No more scams!',
        style: TextStyle(color: Colors.white),
      ),
      image: Image.asset(CurrencyCheck.logoPath),
      backgroundColor: CurrencyCheck.splashBgColor,
      photoSize: 50,
      loaderColor: CurrencyCheck.loaderColor,
    );
  }
}
