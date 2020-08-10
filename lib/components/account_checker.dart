import 'package:flutter/material.dart';

class AccountChecker extends StatelessWidget {
  final String text;
  final String link;
  final Function press;
  const AccountChecker({
    Key key,
    this.text,
    this.link,
    this.press,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        FlatButton(
          child: Text(link),
          onPressed: press,
        ),
      ],
    );
  }
}
