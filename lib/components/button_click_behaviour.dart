import 'package:flutter/material.dart';

MaterialStateProperty<BorderSide>? getBorder(Color color, Color colorPressed) {
  final getBorder = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return BorderSide(color: colorPressed, width: 1);
    } else {
      return BorderSide(color: color, width: 1);
    }
  };
  return MaterialStateProperty.resolveWith(getBorder);
}

MaterialStateProperty<Color>? getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);
}
