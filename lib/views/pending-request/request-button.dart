import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zischify/src/styles/styles.dart';

class RequestButtonWidget extends StatelessWidget {
  RequestButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: FlatButton(
                    onPressed: () => {},
                    padding: EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Palette.rbBlue(),
                          size: 40,
                        ),
                      ],
                    )))));
  }
}
