import 'package:flutter/material.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/screens/register/register_screen.dart';

/// Widget to render the content of the welcome page
///
/// * [Column] Shows the content
/// * [Text] Page presentation text
/// * [RoundedButton] Button to peform some action with
/// * [AccountChecker] A text phrase to gide a navigation to another page
/// * [Placeholder] Holds some space to images
/// * [SizedBox] give some margin to the widget
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
