import 'package:colour_mixer/provider/colour.dart';
import 'package:colour_mixer/views/mixer.dart';
import 'package:colour_mixer/widgets/mybutton.dart';
import 'package:colour_mixer/widgets/proofdisplay.dart';
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
    int opacityValue = colour.opacityValue;
    Color backgroundColour =
        Color.fromARGB(opacityValue, redValue, greenValue, blueValue);
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
            proofDisplay(cardColor: Colors.red, textValue: "RED: $redValue"),
            proofDisplay(
                cardColor: Colors.green, textValue: "GREEN: $greenValue"),
            proofDisplay(cardColor: Colors.blue, textValue: "BLUE: $blueValue"),
            proofDisplay(
                cardColor: Colors.white,
                textValue:
                    "OPACITY: ${(opacityValue == 0 ? 0 : opacityValue / 255 * 100).round()}%"),
            myButton(
                redVal: redValue,
                blueVal: blueValue,
                greenVal: greenValue,
                buttonText: "Go To Mixer",
                context: context,
                routeName: Mixer.routeName),
          ],
        ),
      ),
    );
  }
}
