import 'package:flutter/material.dart';
import 'package:login_page/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          Text(
            "Peace among worlds",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Placeholder(
            color: Colors.blue,
            fallbackHeight: 400,
            fallbackWidth: 150,
          ),
          SizedBox(height: 10),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          RoundedButton(
            text: "SING UP",
            color: Colors.lightBlue,
            textColor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}
