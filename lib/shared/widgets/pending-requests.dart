import 'package:flutter/material.dart';
import 'package:zischify/services/auth.service.dart';
import 'package:zischify/src/styles/Color.dart';
import 'package:zischify/src/styles/Heading.dart';
import 'package:zischify/src/styles/SubTitle.dart';

class PendingRequestsWidget extends StatefulWidget {
  @override
  PendingRequestState createState() => PendingRequestState();
}

class PendingRequestState extends State<PendingRequestsWidget> {
  @override
  initState() {
    super.initState();
    // authService.profile.listen((state) => setState(() => _profile = state));
  }

  final List<String> stuff = ['Hey', 'Du', 'Spast'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      color: blackPrimary,
      child: Column(children: [
        h3('Pending Zisch Requests',
            style: TextStyle(
                color: rbYellow(op: 0.9), fontWeight: FontWeight.w700)),
        Expanded(
            child: ListView.builder(
                itemCount: stuff.length,
                itemBuilder: (BuildContext context, int idx) {
                  return Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width - 50,
                          decoration:
                              BoxDecoration(color: blackHighlight, boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(33, 33, 33, 0.8),
                              offset: Offset(1, 4),
                            )
                          ]),
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          height: 120,
                          child: Text(stuff[idx])));
                }))
      ]),
    );
  }
}
