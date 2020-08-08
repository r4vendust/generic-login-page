import 'package:flutter/material.dart';
import 'package:login_page/components/rounded_textfield.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Placeholder(
            color: Colors.blue,
            fallbackHeight: 400,
            fallbackWidth: 150,
          ),
          SizedBox(height: 10),
          TextFieldRound(
            labelText: "Email",
            color: Colors.blue,
            textColor: Colors.white,
            obscureText: false,
          ),
          TextFieldRound(
            labelText: "Password",
            color: Colors.lightBlue,
            textColor: Colors.black,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
