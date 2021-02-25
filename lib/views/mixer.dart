import 'package:colour_mixer/models/slidermodel.dart';
import 'package:colour_mixer/provider/colour.dart';
import 'package:colour_mixer/views/proof.dart';
import 'package:colour_mixer/widgets/mixdisplay.dart';
import 'package:colour_mixer/widgets/mybutton.dart';
import 'package:colour_mixer/widgets/myslider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mixer extends StatelessWidget {
  static const String routeName = '/mixer';
  @override
  Widget build(BuildContext context) {
    final colorUtility = Provider.of<ColorUtility>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Colour mixer"),
      ),
      body: Container(
        color: colorUtility.getBackgroundColor(),
        child: Center(
          child: Consumer<ColorUtility>(
            builder: (context, colour, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Text(
                    'Mix your colour with the sliders',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    child: Column(
                      children: [
                        mySlider(slidersList[0],
                            colorUtility.backgroundColor.red, context),
                        mySlider(slidersList[1],
                            colorUtility.backgroundColor.green, context),
                        mySlider(slidersList[2],
                            colorUtility.backgroundColor.blue, context),
                        mySlider(slidersList[3],
                            colorUtility.backgroundColor.alpha, context),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    child: Column(
                      children: [
                        mixDisplay("RED:",
                            colorUtility.backgroundColor.red.toString()),
                        mixDisplay("GREEN:",
                            colorUtility.backgroundColor.green.toString()),
                        mixDisplay("BLUE:",
                            colorUtility.backgroundColor.blue.toString()),
                        mixDisplay("OPACITY:",
                            "${(colorUtility.backgroundColor.alpha == 0 ? 0 : colorUtility.backgroundColor.alpha / 255 * 100).round().toString()}%"),
                      ],
                    ),
                  ),
                ),
                myButton(
                    redVal: colorUtility.backgroundColor.red,
                    greenVal: colorUtility.backgroundColor.green,
                    blueVal: colorUtility.backgroundColor.blue,
                    buttonText: "Go To Proof",
                    context: context,
                    routeName: Proof.routeName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
