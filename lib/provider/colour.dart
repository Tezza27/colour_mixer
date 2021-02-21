import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// enum colourElements {
//   redValue,
//   greenValue,
//   blueValue,
//   opacityValue,
// }

class Colour with ChangeNotifier {
  int _redValue = 125;
  int _greenValue = 125;
  int _blueValue = 125;
  double _opacityValue = 1.0;

  int get redValue => _redValue;

  int get greenValue => _greenValue;

  int get blueValue => _blueValue;

  double get opacityValue => _opacityValue;

  set newRedValue(int newRed) {
    _redValue = newRed;
    notifyListeners();
  }

  set newGreenValue(int newGreen) {
    _greenValue = newGreen;
    notifyListeners();
  }

  set newBlueValue(int newBlue) {
    _blueValue = newBlue;
    notifyListeners();
  }

  set newOpacityValue(double newOpacity) {
    _opacityValue = newOpacity;
    notifyListeners();
  }
}
