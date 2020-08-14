import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFF121212);
  static const Color highlight = Color(0xFF212121);

  static const Color whiteHighlight = Color.fromRGBO(255, 255, 255, 0.97);
  static const Color whitePrimary = Color.fromRGBO(255, 255, 255, 0.87);

  static Color rbYellow({double op = 1.0}) {
    return Color.fromRGBO(255, 204, 0, op);
  }

  static Color rbRed({double op = 1.0}) {
    return Color.fromRGBO(219, 10, 64, op);
  }

  static Color rbBlue({double op = 1.0}) {
    return Color.fromRGBO(34, 57, 114, op);
  }
}
