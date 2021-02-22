import 'package:colour_mixer/provider/colour.dart';
import 'package:colour_mixer/views/proof.dart';
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 8.0),
                          child: Slider(
                            min: 0.0,
                            max: 255.0,
                            divisions: 255,
                            value: colour.redValue.toDouble(),
                            activeColor: Colors.red[900],
                            inactiveColor: Colors.red[500],
                            onChanged: (newValueRed) {
                              colour.newRedValue = newValueRed.toInt();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 8.0),
                          child: Slider(
                            min: 0.0,
                            max: 255.0,
                            divisions: 255,
                            value: colour.greenValue.toDouble(),
                            activeColor: Colors.green[900],
                            inactiveColor: Colors.green[500],
                            onChanged: (newValueGreen) {
                              colour.newGreenValue = newValueGreen.toInt();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 8.0),
                          child: Slider(
                            min: 0.0,
                            max: 255.0,
                            divisions: 255,
                            value: colour.blueValue.toDouble(),
                            activeColor: Colors.blue[900],
                            inactiveColor: Colors.blue[500],
                            onChanged: (newValueBlue) {
                              colour.newBlueValue = newValueBlue.toInt();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 8.0),
                          child: Slider(
                            min: 0.0,
                            max: 100.0,
                            divisions: 100,
                            value: colour.opacityValue,
                            activeColor: Colors.black,
                            inactiveColor: Colors.grey[500],
                            onChanged: (newValueOpacity) {
                              colour.newOpacityValue = newValueOpacity;
                            },
                          ),
                        ),
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
                              Text("${opacityValue.toInt()}%",
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
