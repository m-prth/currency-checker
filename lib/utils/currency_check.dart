import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyCheck {
  //texts
  static const String app_title = "Currency Checker";
  static const String loader_Text = "No more scams!";
  static const String app_title1 = "Currency";
  static const String app_title2 = "Checker";
  static const String gallery_button_text = "Gallery";
  static const String camera_button_text = "Camera";
  static const String reset_button_text = "Reset";
  static const String rbi_button = "RBI Guidelines";
  static const String team_button = "Team";

  //icons
  static const IconData camera_icon = Icons.camera_alt_outlined;
  static const IconData gallery_icon = Icons.image_outlined;
  static const IconData reset_icon = Icons.refresh_rounded;
  static const IconData right_arrow = Icons.arrow_right_alt_rounded;
  static const IconData team_info_icon = Icons.people_alt_outlined;

  //textStyles
  static TextStyle headingStyle = GoogleFonts.roboto(
      fontWeight: FontWeight.bold, fontSize: 33, color: Colors.white);
  static TextStyle buttonTextStyle = GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black);
  static TextStyle buttonTextStyle2 = GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black);

  //colors
  static MaterialColor primarySwatch = Colors.blue;
  static Color loaderColor = Color(0xFF289C55);
  static Color splashBgColor = Colors.black;
  static Color bgColor = Color(0xFF2e19a9);
  static Color sqButtonColor = Color(0xFFF02A12);
  static Color resetButtonColor = Color(0xFFB2FF59);
  static Color rbiButtonColor = Color(0xFF02B3FF);
  static Color teamButtonColor = Colors.yellowAccent;

  //paths
  static const String logoPath = 'assets/logo.png';
  static const String bannerPath = 'assets/banner.jpg';
  static const String bannerPath2 = 'assets/banner2.png';

  //URL
  static const String guidelines_URL = 'https://paisaboltahai.rbi.org.in/';
}

