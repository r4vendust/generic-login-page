import 'package:flutter/material.dart';

/// A widget to display a message and toggle between pages
///
/// *[Row] which displays an phrase with some link to another page at the end
/// *[Text] with the message
/// *[FlatButton] that carries a text and the linked page
class AccountChecker extends StatelessWidget {
  /// The text prompt before the page link
  ///
  /// Is passed through a [Text] widget
  ///
  /// Hint: Typically a question
  final String text;

  /// The text adressed to a linked page
  ///
  /// Is passed through a [Text] widget
  final String link;

  /// Function to make some action in the linked text
  ///
  /// Typically a [Navigator] with a [MaterialPageRouter]
  final Function press;

  /// Default Constructor
  const AccountChecker({
    Key key,
    this.text,
    this.link,
    this.press,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        FlatButton(
          child: Text(link),
          onPressed: press,
        ),
      ],
    );
  }
}
