import 'dart:math';

import 'package:currency_checker/utils/currency_check.dart';
import 'package:currency_checker/utils/team_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamPage extends StatelessWidget {
  static const String routeName = '/speakers';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Team',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyCard(
              myInt: 0,
            ),
            MyCard(
              myInt: 1,
            ),
            MyCard(
              myInt: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final int myInt;

  const MyCard({Key key, this.myInt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CurrencyCheck.teamButtonColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ConstrainedBox(
                  constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  child: Image.asset(
                    speakers[myInt].speakerImage,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          speakers[myInt].speakerName,
                          style: CurrencyCheck.buttonTextStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: 5,
                          color: Tools.multiColors[Random().nextInt(4)],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      speakers[myInt].speakerDesc,
                      style: CurrencyCheck.buttonTextStyle3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    socialActions(context, speakers[myInt]),
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

Widget socialActions(context, Member member) => FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.facebookF,
              size: 20,
            ),
            onPressed: () {
              launch(member.fbUrl);
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.twitter,
              size: 20,
            ),
            onPressed: () {
              launch(member.twitterUrl);
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.linkedinIn,
              size: 20,
            ),
            onPressed: () {
              launch(member.linkedinUrl);
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.instagram,
              size: 20,
            ),
            onPressed: () {
              launch(member.instagramUrl);
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.github,
              size: 20,
            ),
            onPressed: () {
              launch(member.githubUrl);
            },
          ),
        ],
      ),
    );
