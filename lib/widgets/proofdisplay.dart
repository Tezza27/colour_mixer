import 'package:flutter/material.dart';

Widget proofDisplay({Color cardColor, String textValue}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textValue,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    ),
  );
}
