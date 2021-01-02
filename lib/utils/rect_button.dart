import 'package:currency_checker/utils/currency_check.dart';
import 'package:flutter/material.dart';

class RectButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;

  const RectButton(
      {Key key, @required this.color, @required this.text, @required this.icon})
      : super(key: key);

  void myFunc() {
    print("Hello World");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
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
