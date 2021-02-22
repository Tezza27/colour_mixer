import 'package:colour_mixer/provider/colour.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Proof extends StatelessWidget {
  static const String routeName = '/proof';
  @override
  Widget build(BuildContext context) {
    final colour = Provider.of<Colour>(context);
    int redValue = colour.redValue;
    int greenValue = colour.greenValue;
    int blueValue = colour.blueValue;
    double opacityValue = colour.opacityValue;
    Color backgroundColour =
        Color.fromRGBO(redValue, greenValue, blueValue, opacityValue);
    return Scaffold(
      appBar: AppBar(
        title: Text("Proving The Concept..."),
      ),
      body: Container(
        color: backgroundColour,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Color.fromRGBO(255, 0, 0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "RED: $redValue",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Color.fromRGBO(0, 255, 0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "GREEN: $greenValue",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Color.fromRGBO(0, 0, 255, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "BLUE: $blueValue",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Color.fromRGBO(255, 255, 255, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "OPACITY: ${opacityValue.toInt()}%",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
