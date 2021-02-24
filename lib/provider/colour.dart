import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// enum colourElements {
//   redValue,
//   greenValue,
//   blueValue,
//   opacityValue,
// }

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
        notifyListeners();
    }
  }

  // int _redValue = 125;
  // int _greenValue = 125;
  // int _blueValue = 125;
  // int _opacityValue = 255;

  // int get redValue => _redValue;

  // int get greenValue => _greenValue;

  // int get blueValue => _blueValue;

  // int get opacityValue => _opacityValue;

  // set newOpacityValue(int newOpacity) {
  //   _opacityValue = newOpacity;
  //   notifyListeners();
  // }

  // set newRedValue(int newRed) {
  //   _redValue = newRed;
  //   notifyListeners();
  // }

  // set newGreenValue(int newGreen) {
  //   _greenValue = newGreen;
  //   notifyListeners();
  // }

  // set newBlueValue(int newBlue) {
  //   _blueValue = newBlue;
  //   notifyListeners();
  // }
}
