import 'dart:ui';

import 'package:flutter/Material.dart';
import 'package:zischify/src/styles/Color.dart';

final TextOverflow overflow = TextOverflow.ellipsis;

TextStyle h1Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    fontSize: 48);

TextStyle h2Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    fontSize: 32);

TextStyle h3Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    fontSize: 28);

TextStyle h4Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    fontSize: 26);

TextStyle h5Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    fontSize: 24);

TextStyle h6Style = TextStyle(
    color: white87,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    fontSize: 20);

Text h1(String text, {TextStyle style}) {
  return Text(
    text,
    style: h1Style.merge(style),
    overflow: overflow,
  );
}

Text h2(String text, {TextStyle style}) {
  return Text(
    text,
    style: h2Style.merge(style),
    overflow: overflow,
  );
}

Text h3(String text, {TextStyle style}) {
  return Text(
    text,
    style: h3Style.merge(style),
    overflow: overflow,
  );
}

Text h4(String text, {TextStyle style}) {
  return Text(
    text,
    style: h4Style.merge(style),
    overflow: overflow,
  );
}

Text h5(String text, {TextStyle style}) {
  return Text(
    text,
    style: h5Style.merge(style),
    overflow: overflow,
  );
}

Text h6(String text, {TextStyle style}) {
  return Text(
    text,
    style: h6Style.merge(style),
    overflow: overflow,
  );
}
