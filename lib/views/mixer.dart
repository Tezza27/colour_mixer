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
    final colour = Provider.of<Colour>(context);
    int redValue = colour.redValue;
    int greenValue = colour.greenValue;
    int blueValue = colour.blueValue;
    int opacityValue = colour.opacityValue;
    Color backgroundColour =
        Color.fromARGB(opacityValue, redValue, greenValue, blueValue);
    return Scaffold(
      appBar: AppBar(
        title: Text("Colour mixer"),
      ),
      body: Container(
        color: backgroundColour,
        child: Center(
          child: Consumer<Colour>(
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
                        mySlider(slidersList[0], redValue, context),
                        mySlider(slidersList[1], greenValue, context),
                        mySlider(slidersList[2], blueValue, context),
                        mySlider(slidersList[3], opacityValue.toInt(), context),
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
                        mixDisplay("RED:", redValue.toString()),
                        mixDisplay("GREEN:", greenValue.toString()),
                        mixDisplay("BLUE:", blueValue.toString()),
                        mixDisplay("OPACITY:",
                            "${(opacityValue == 0 ? 0 : opacityValue / 255 * 100).round().toString()}%"),
                      ],
                    ),
                  ),
                ),
                myButton(
                    redVal: redValue,
                    blueVal: blueValue,
                    greenVal: greenValue,
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
