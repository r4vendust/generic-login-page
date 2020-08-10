import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String labelText;
  final Color color;
  final bool obscureText;

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
