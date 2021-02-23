import 'package:colour_mixer/models/slidermodel.dart';
import 'package:colour_mixer/provider/colour.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget mySlider(
    SliderModel sliderModel, int sliderValue, BuildContext context) {
  final colour = Provider.of<Colour>(context);

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
    child: Slider(
      min: sliderModel.min,
      max: sliderModel.max,
      divisions: sliderModel.divisions,
      value: sliderValue.toDouble(),
      activeColor: sliderModel.activeColor,
      inactiveColor: sliderModel.inactiveColor,
      onChanged: (newValue) {
        switch (sliderModel.name) {
          case "opacity":
            colour.newOpacityValue = newValue.toInt();
            break;
          case "red":
            colour.newRedValue = newValue.toInt();
            break;
          case "green":
            colour.newGreenValue = newValue.toInt();
            break;
          case "blue":
            colour.newBlueValue = newValue.toInt();
            break;
        }
      },
    ),
  );
}
