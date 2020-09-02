import 'package:flutter/material.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/components/rounded_textfield.dart';
import 'package:login_page/components/account_checker.dart';
import 'package:login_page/services/auth.dart';

/// A widget to render the content of the registration page
///
/// * [Column] Shows the content
/// * [Text] Page presentation text
/// * [RoundedTextField] User input text
/// * [RoundedButton] Button to peform some action with
/// * [AccountChecker] A text phrase to gide a navigation to another page
/// * [Placeholder] Holds some space to images
/// * [SizedBox] give some margin to the widgetg
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();
  String firstName;
  String lastName;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Placeholder(
              color: Colors.blue,
              fallbackHeight: 95,
              fallbackWidth: 150,
            ),
            SizedBox(height: 10),
            RoundedTextField(
              labelText: "First Name",
              color: Colors.lightBlue,
              obscureText: false,
              value: firstName,
            ),
            RoundedTextField(
              labelText: "Last Name",
              color: Colors.lightBlue,
              obscureText: false,
              value: lastName,
            ),
            RoundedTextField(
              labelText: "Email",
              color: Colors.lightBlue,
              obscureText: false,
              value: email,
            ),
            RoundedTextField(
              labelText: "Password",
              color: Colors.lightBlue,
              obscureText: true,
              value: password,
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
      ),
    );
  }
}
