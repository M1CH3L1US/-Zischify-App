import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zischify/src/styles/Color.dart';
import 'package:zischify/src/styles/Heading.dart';

class RequestButtonWidget extends StatelessWidget {
  RequestButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        color: blackPrimary,
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: blackHighlight,
                ),
                child: FlatButton(
                    onPressed: () => {},
                    color: blackPrimary,
                    padding: EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: rbBlue(),
                          size: 40,
                        ),
                        h5('Request a Zisch')
                      ],
                    )))));
  }
}
