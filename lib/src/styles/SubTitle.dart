import 'dart:ui';

import 'package:flutter/Material.dart';
import 'package:zischify/src/styles/Color.dart';

final TextOverflow overflow = TextOverflow.ellipsis;

TextStyle sub1Sytle = TextStyle(
    color: white60,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
    fontSize: 16);

TextStyle sub2Sytle = TextStyle(
    color: white60,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    fontSize: 14);

Text sub1(String text, {TextStyle style}) {
  return Text(
    text,
    style: sub1Sytle.merge(style),
    overflow: overflow,
  );
}

Text sub2(String text, {TextStyle style}) {
  return Text(
    text,
    style: sub2Sytle.merge(style),
    overflow: overflow,
  );
}
