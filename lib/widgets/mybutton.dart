import 'package:flutter/material.dart';

Widget myButton(
    {int redVal,
    int greenVal,
    int blueVal,
    String buttonText,
    BuildContext context,
    String routeName}) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: RaisedButton(
      color: Color.fromRGBO(255 - redVal, 255 - greenVal, 255 - blueVal, 1),
      child: Text(buttonText),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    ),
  );
}
