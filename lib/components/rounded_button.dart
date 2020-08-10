import 'package:flutter/material.dart';

/// A widget to render a rounded button with some text
///
/// *[ClipRRect] To clips a [FlatButton] into a rounded border
/// *[FlatButton] Button with some [Text]
class RoundedButton extends StatelessWidget {
  /// Text prompt in the button
  final String text;

  /// Function activated when the button is pressed
  ///
  /// Typically a [Navigator] in order to go to another page
  final Function press;

  /// [Color] of the button and the text respectivelly
  ///
  final Color color, textColor;

  /// Default Constructor
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
