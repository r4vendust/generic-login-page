import 'package:flutter/material.dart';
import 'components/body.dart';

/// A widget to display the content of the authentication page
///
/// *[Body] Render the content of the pag
class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
