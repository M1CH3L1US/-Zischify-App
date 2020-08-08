import 'dart:ui';

import 'package:flutter/Material.dart';
import 'package:zischify/src/styles/Color.dart';

final TextOverflow overflow = TextOverflow.ellipsis;

TextStyle body1Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    fontSize: 16);

TextStyle body2Style = TextStyle(
    color: white60,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    fontSize: 14);

Text body1(String text, {TextStyle style}) {
  return Text(
    text,
    style: body1Style.merge(style),
    overflow: overflow,
  );
}

Text body2(String text, {TextStyle style}) {
  return Text(
    text,
    style: body2Style.merge(style),
    overflow: overflow,
  );
}
