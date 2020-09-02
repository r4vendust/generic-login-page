import 'package:flutter/material.dart';
import 'package:login_page/services/auth.dart';
import 'package:login_page/components/rounded_button.dart';

class Body extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 50, 30, 0),
      child: Column(
        children: [
          Text("Welcome user"),
          Row(
            children: [
              RoundedButton(
                text: "Sign Out",
                textColor: Colors.white,
                color: Colors.blue,
                press: () async {
                  await _auth.signOut();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
