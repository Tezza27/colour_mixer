import 'package:colour_mixer/provider/colour.dart';
import 'package:colour_mixer/views/mixer.dart';
import 'package:colour_mixer/views/proof.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ColorUtility>(
      create: (context) => ColorUtility(), child: MyApp()));
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
      initialRoute: Mixer.routeName,
      routes: {
        Mixer.routeName: (context) => Mixer(),
        Proof.routeName: (context) => Proof(),
      },
    );
  }
}
