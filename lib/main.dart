import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colour Mixer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Colour Mixer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int redValue = 40;
  int greenValue = 40;
  int blueValue = 40;
  double opacityValue = 1.0;

  Color getColour(
      {int redValue, int greenValue, int blueValue, double opacityValue}) {
    return Color.fromRGBO(redValue, greenValue, blueValue, opacityValue);
  }

  @override
  Widget build(BuildContext context) {
    Color backColour = getColour(
        redValue: redValue,
        greenValue: greenValue,
        blueValue: blueValue,
        opacityValue: opacityValue);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: backColour,
        child: Center(
          child: Column(
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
                          value: redValue.toDouble(),
                          activeColor: Colors.red[900],
                          inactiveColor: Colors.red[500],
                          onChanged: (newValueRed) {
                            setState(() {
                              redValue = newValueRed.toInt();
                              backColour = getColour(
                                  redValue: redValue,
                                  greenValue: greenValue,
                                  blueValue: blueValue,
                                  opacityValue: opacityValue);
                            });
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
                          value: greenValue.toDouble(),
                          activeColor: Colors.green[900],
                          inactiveColor: Colors.green[500],
                          onChanged: (newValueGreen) {
                            setState(() {
                              greenValue = newValueGreen.toInt();
                              backColour = getColour(
                                  redValue: redValue,
                                  greenValue: greenValue,
                                  blueValue: blueValue,
                                  opacityValue: opacityValue);
                            });
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
                          value: blueValue.toDouble(),
                          activeColor: Colors.blue[900],
                          inactiveColor: Colors.blue[500],
                          onChanged: (newValueBlue) {
                            setState(() {
                              blueValue = newValueBlue.toInt();
                              backColour = getColour(
                                  redValue: redValue,
                                  greenValue: greenValue,
                                  blueValue: blueValue,
                                  opacityValue: opacityValue);
                            });
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
                          value: opacityValue,
                          activeColor: Colors.black,
                          inactiveColor: Colors.grey[500],
                          onChanged: (newValueOpacity) {
                            setState(() {
                              opacityValue = newValueOpacity;
                              backColour = getColour(
                                  redValue: redValue,
                                  greenValue: greenValue,
                                  blueValue: blueValue,
                                  opacityValue: opacityValue);
                            });
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
            ],
          ),
        ),
      ),
    );
  }
}
