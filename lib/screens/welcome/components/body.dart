import 'package:flutter/material.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/screens/register/register_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome",
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
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }),
              );
            },
          ),
          RoundedButton(
            text: "SING UP",
            color: Colors.lightBlue,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
