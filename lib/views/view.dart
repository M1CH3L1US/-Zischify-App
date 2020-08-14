import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zischify/services/auth.service.dart';
import 'package:zischify/shared/drawer.dart';
import 'package:zischify/src/di/injector.dart';

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
  AuthService _authService = injector.get<AuthService>();

  @override
  void initState() {
    super.initState();

    _authService.profile.listen((user) {
      if (user == null) Navigator.pushNamed((ctx), '/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    this.ctx = context;
    return new Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
            child: Scaffold(
          body: Column(children: children),
          drawer: NavDrawer(),
        )));
  }
}
