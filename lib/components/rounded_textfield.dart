import 'package:flutter/material.dart';

class TextFieldRound extends StatelessWidget {
  @override
  final String labelText;
  final Color color, textColor;
  final bool obscureText;

  const TextFieldRound({
    Key key,
    this.labelText,
    this.color,
    this.textColor,
    this.obscureText,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}
