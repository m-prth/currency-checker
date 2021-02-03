import 'package:currency_checker/utils/currency_check.dart';
import 'package:flutter/material.dart';

class RectButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final onPressed;

  const RectButton(
      {@required this.color,
      @required this.text,
      @required this.icon,
      @required this.onPressed});

  void myFunc() {
    print("Hello World");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width - 30,
      child: FlatButton(
        color: color,
        disabledColor: color,
        onPressed: onPressed,
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
