import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorUtility with ChangeNotifier {
  Color backgroundColor = Color.fromARGB(255, 0, 0, 0);

  Color getBackgroundColor() {
    return backgroundColor;
  }

  void setBackgroundColor({String channel, int value}) {
    switch (channel) {
      case "opacity":
        backgroundColor = backgroundColor.withAlpha(value);
        break;
      case "red":
        backgroundColor = backgroundColor.withRed(value);
        break;
      case "green":
        backgroundColor = backgroundColor.withGreen(value);
        break;
      case "blue":
        backgroundColor = backgroundColor.withBlue(value);
        break;
    }
    notifyListeners();
  }
}
