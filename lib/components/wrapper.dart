import 'package:flutter/material.dart';
import 'package:login_page/screens/home/home.dart';
import 'package:login_page/models/user.dart';
import 'package:login_page/screens/authenticate/auth_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      print('do not pass');
      return AuthPage();
    } else {
      print('pass');
      return Home();
    }
  }
}
