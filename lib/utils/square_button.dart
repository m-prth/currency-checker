import 'package:currency_checker/utils/currency_check.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final IconData myIcon;
  final String text;

  void myFunc() {
    print("Hello World");
  }

  const SquareButton({required this.myIcon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: FlatButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: CurrencyCheck.sqButtonColor,
        disabledColor: Colors.grey,
        onPressed: myFunc,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              myIcon,
              size: 50.0,
              color: Colors.black,
            ),
            Center(
              child: Text(
                text,
                style: CurrencyCheck.buttonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
