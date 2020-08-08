import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zischify/services/auth.service.dart';

class View extends StatefulWidget {
  final List<Widget> children;
  View(this.children);

  @override
  State<StatefulWidget> createState() => ViewState(this.children);
}

class ViewState extends State<View> {
  List<Widget> children;
  BuildContext ctx;
  ViewState(this.children);

  @override
  void initState() {
    super.initState();

    authService.user.listen(
        (user) => {if (user == null) Navigator.pushNamed((ctx), '/signup')});
  }

  @override
  Widget build(BuildContext context) {
    this.ctx = context;
    return new Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(child: Scaffold(body: Column(children: children))));
  }
}
