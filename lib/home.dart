import 'package:currency_checker/utils/currency_check.dart';
import 'package:currency_checker/utils/rect_button.dart';
import 'package:currency_checker/utils/square_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _launchURL() async {
    if( await canLaunch(CurrencyCheck.guidelines_URL)){
      await launch(CurrencyCheck.guidelines_URL);
    } else {
      throw 'Could not launch URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CurrencyCheck.bgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  CurrencyCheck.app_title,
                  style: CurrencyCheck.headingStyle,
                ),
              ),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(5, 9), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    CurrencyCheck.bannerPath2,
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                padding: const EdgeInsets.all(45.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SquareButton(
                          myIcon: CurrencyCheck.camera_icon,
                          text: CurrencyCheck.camera_button_text,
                        ),
                        SquareButton(
                          myIcon: CurrencyCheck.gallery_icon,
                          text: CurrencyCheck.gallery_button_text,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RectButton(
                      color: CurrencyCheck.resetButtonColor,
                      text: CurrencyCheck.reset_button_text,
                      icon: CurrencyCheck.reset_icon,
                      onPressed: null,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RectButton(
                      color: CurrencyCheck.rbiButtonColor,
                      text: CurrencyCheck.rbi_button,
                      icon: CurrencyCheck.right_arrow,
                      onPressed: _launchURL,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RectButton(
                      text: CurrencyCheck.team_button,
                      color: CurrencyCheck.teamButtonColor,
                      icon: CurrencyCheck.team_info_icon,
                      onPressed: () => print('Pressed Team Button'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
