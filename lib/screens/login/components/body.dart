import 'package:flutter/material.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/components/rounded_textfield.dart';
import 'package:login_page/components/account_checker.dart';
import 'package:login_page/screens/register/register_screen.dart';

/// A widget to render the content of the login page
///
/// * [Column] Shows the content
/// * [Text] Page presentation text
/// * [RoundedTextField] User input text
/// * [RoundedButton] Button to peform some action with
/// * [AccountChecker] A text phrase to gide a navigation to another page
/// * [Placeholder] Holds some space to images
/// * [SizedBox] give some margin to the widgets
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
          SizedBox(height: 15),
          Placeholder(
            color: Colors.blue,
            fallbackHeight: 300,
            fallbackWidth: 150,
          ),
          SizedBox(height: 10),
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
          RoundedButton(
            text: "SIGN IN",
            textColor: Colors.white,
            press: () {},
          ),
          AccountChecker(
            text: "Doesn't have an account?",
            link: "Sign Up",
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
