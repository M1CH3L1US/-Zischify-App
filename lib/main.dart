import 'package:flutter/material.dart';
import 'package:zischify/shared/widgets/pending-requests.dart';
import 'package:zischify/shared/widgets/top-navigation.dart';
import 'package:zischify/shared/widgets/user-tab.dart';
import 'package:zischify/views/pending-request/pending-requests.dart';
import 'package:zischify/views/pending-request/request-button.dart';
import 'package:zischify/views/signup/signup.dart';
import 'package:zischify/views/view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zischify',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(fontFamily: 'Roboto'),
      routes: {
        '/': (BuildContext context) => ZischifyHome(),
        '/signup': (BuildContext context) => SignUpView()
      },
    );
  }
}

class ZischifyHome extends View {
  ZischifyHome()
      : super(
            [TopNavigation(), PendingRequestsWidget(), RequestButtonWidget()]);
}
