import 'package:flutter/material.dart';

enum SliderType { red, green, blue, opacity }

class SliderModel {
  String name;
  double min;
  double max;
  int divisions;
  Color activeColor;
  Color inactiveColor;

  SliderModel({
    this.name,
    this.min,
    this.max,
    this.divisions,
    this.activeColor,
    this.inactiveColor,
  });
}

List<SliderModel> slidersList = [
  SliderModel(
    name: "red",
    min: 0.0,
    max: 255.0,
    divisions: 255,
    activeColor: Colors.red[900],
    inactiveColor: Colors.red[500],
  ),
  SliderModel(
    name: "green",
    min: 0.0,
    max: 255.0,
    divisions: 255,
    activeColor: Colors.green[900],
    inactiveColor: Colors.green[500],
  ),
  SliderModel(
    name: "blue",
    min: 0.0,
    max: 255.0,
    divisions: 255,
    activeColor: Colors.blue[900],
    inactiveColor: Colors.blue[500],
  ),
  SliderModel(
    name: "opacity",
    min: 0.0,
    max: 255.0,
    divisions: 255,
    activeColor: Colors.black,
    inactiveColor: Colors.grey[200],
  ),
];
