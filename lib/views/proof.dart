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
    final colorUtility = Provider.of<ColorUtility>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Proving The Concept..."),
      ),
      body: Container(
        color: colorUtility.getBackgroundColor(),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            proofDisplay(
                cardColor: Colors.red,
                textValue: "RED: ${(colorUtility.backgroundColor.red)}"),
            proofDisplay(
                cardColor: Colors.green,
                textValue: "GREEN: ${(colorUtility.backgroundColor.green)}"),
            proofDisplay(
                cardColor: Colors.blue,
                textValue: "BLUE: ${(colorUtility.backgroundColor.blue)}"),
            proofDisplay(
                cardColor: Colors.white,
                textValue:
                    "OPACITY: ${(colorUtility.backgroundColor.alpha == 0 ? 0 : colorUtility.backgroundColor.alpha / 255 * 100).round().toString()}%"),
            myButton(
                redVal: colorUtility.backgroundColor.red,
                greenVal: colorUtility.backgroundColor.green,
                blueVal: colorUtility.backgroundColor.blue,
                buttonText: "Go To Mixer",
                context: context,
                routeName: Mixer.routeName),
          ],
        ),
      ),
    );
  }
}
