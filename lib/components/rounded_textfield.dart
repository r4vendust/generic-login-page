import 'package:flutter/material.dart';

/// A widget to render a rounded input text field
///
class RoundedTextField extends StatelessWidget {
  /// Text prompt before users input some text in the field
  final String labelText;

  /// [Color] of the rounded text field
  final Color color;

  /// Boolean that defines if the input text of the user will be shown
  final bool obscureText;

  /// Default Constructor
  const RoundedTextField({
    Key key,
    this.labelText,
    this.color,
    this.obscureText,
  }) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: color,
      ),
      child: ClipRRect(
        child: TextField(
          decoration: InputDecoration(
            hintText: labelText,
          ),
          obscureText: obscureText,
        ),
      ),
    );
  }
}
