import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyCheck {
  //texts
  static const String app_title = "Currency Checker";
  static const String loaderText = "No more scams!";
  static const String app_title1 = "Currency";
  static const String app_title2 = "Checker";
  static const String gallery_button_text = "Gallery";
  static const String camera_button_text = "Camera";

  //textStyles
  static TextStyle headingStyle = GoogleFonts.roboto(
      fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white);

  static TextStyle headingStyle1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,fontSize: 40,color: Colors.white
  );
  //static TextStyle headingStyle2 = GoogleFonts.raleway()

  //colors
  static MaterialColor primarySwatch = Colors.blue;
  static Color loaderColor = Color(0xFF289C55);
  static Color splashBgColor = Colors.black;
  static Color bgColor = Color(0xFF2e19a9);
  static Color sqButtonColor = Color(0xFFF02A12);
  static Color resetButtonColor = Color(0xFFB2FF59);

  //paths
  static const String logoPath = 'assets/logo.png';
  static const String bannerPath = 'assets/banner.jpg';
  static const String bannerPath2 = 'assets/banner2.png';
}
