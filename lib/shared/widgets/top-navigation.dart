import 'package:flutter/material.dart';
import 'package:zischify/src/styles/styles.dart';

class TopNavigation extends StatelessWidget {
  TopNavigation();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaterialButton(onPressed: () => {}, child: Text('Menu')),
      ],
    ));
  }
}
