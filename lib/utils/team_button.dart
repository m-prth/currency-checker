import 'package:currency_checker/utils/currency_check.dart';
import 'package:flutter/material.dart';

class TeamButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;

  const TeamButton(
      {@required this.text, @required this.color, @required this.icon});

  void myFunc() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 280,
      child: FlatButton(
        color: color,
        onPressed: myFunc,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: CurrencyCheck.buttonTextStyle2,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              icon,
              size: 30.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
