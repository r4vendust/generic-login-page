import 'package:flutter/material.dart';

/// A widget to render a rounded input text field
///
class RoundedTextField extends StatefulWidget {
  /// Text prompt before users input some text in the field
  String labelText;

  /// [Color] of the rounded text field
  Color color;

  /// Boolean that defines if the input text of the user will be shown
  bool obscureText;

  /// [String] Passed by the user
  String value;

  /// Default Constructor
  RoundedTextField({
    this.labelText,
    this.color,
    this.obscureText,
    this.value,
  });

  @override
  _RoundedTextFieldState createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: widget.color,
      ),
      child: ClipRRect(
        child: TextField(
          decoration: InputDecoration(
            hintText: widget.labelText,
          ),
          obscureText: widget.obscureText,
          onChanged: (val) {
            setState(() => widget.value = val);
          },
        ),
      ),
    );
  }
}
