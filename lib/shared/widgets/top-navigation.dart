import 'package:flutter/material.dart';
import 'package:zischify/src/styles/Color.dart';

class TopNavigation extends StatelessWidget {
  TopNavigation();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: blackPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(onPressed: () => {}, child: Text('Menu')),
          ],
        ));
  }
}
