import 'package:flutter/material.dart';

class DividerBasicPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Divider(
          height: 1,
          color: Colors.white24,
        ));
  }
}
