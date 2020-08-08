import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Peace among worlds",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets\r_m.png",
          height: size.height * 0.4,
        ),
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
    ));
  }
}
