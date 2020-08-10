import 'package:flutter/material.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/components/rounded_textfield.dart';
import 'package:login_page/components/account_checker.dart';

/// A widget to render the content of the registration page
///
/// * [Column] Shows the content
/// * [Text] Page presentation text
/// * [RoundedTextField] User input text
/// * [RoundedButton] Button to peform some action with
/// * [AccountChecker] A text phrase to gide a navigation to another page
/// * [Placeholder] Holds some space to images
/// * [SizedBox] give some margin to the widgetg
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Placeholder(
            color: Colors.blue,
            fallbackHeight: 95,
            fallbackWidth: 150,
          ),
          RoundedTextField(
            labelText: "First Name",
            color: Colors.lightBlue,
            obscureText: false,
          ),
          RoundedTextField(
            labelText: "Last Name",
            color: Colors.lightBlue,
            obscureText: false,
          ),
          RoundedTextField(
            labelText: "Email",
            color: Colors.lightBlue,
            obscureText: false,
          ),
          RoundedTextField(
            labelText: "Password",
            color: Colors.lightBlue,
            obscureText: true,
          ),
          RoundedTextField(
            labelText: "Repeat Password",
            color: Colors.lightBlue,
            obscureText: true,
          ),
          RoundedButton(
            text: "Create Account",
            textColor: Colors.white,
            press: () {},
          ),
          AccountChecker(
            text: "Already have an account?",
            link: "Sign in",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
