import 'package:flutter/material.dart';

Widget mixDisplay(String sliderType, String sliderValue) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(sliderType,
            style: TextStyle(
              fontSize: 18,
            )),
        SizedBox(
          width: 12.0,
        ),
        Text(sliderValue,
            style: TextStyle(
              fontSize: 18,
            )),
      ],
    ),
  );
}
