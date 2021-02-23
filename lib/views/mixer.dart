import 'package:colour_mixer/models/slidermodel.dart';
import 'package:colour_mixer/provider/colour.dart';
import 'package:colour_mixer/views/proof.dart';
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
    double opacityValue = colour.opacityValue;
    Color backgroundColour =
        Color.fromRGBO(redValue, greenValue, blueValue, opacityValue);
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("RED",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text("$redValue",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("GREEN",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text("$greenValue",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("BLUE",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text("$blueValue",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("OPACITY",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text("${(opacityValue * 100).round()}%",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  color: Color.fromRGBO(
                      255 - redValue, 255 - greenValue, 255 - blueValue, 1),
                  child: Text("Go To Proof"),
                  onPressed: () {
                    Navigator.pushNamed(context, Proof.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
