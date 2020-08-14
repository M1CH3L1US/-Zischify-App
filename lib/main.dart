import 'package:flutter/material.dart';
import 'package:zischify/services/services.dart';
import 'package:zischify/src/di/injector.dart';
import 'package:zischify/src/styles/styles.dart';
import 'package:zischify/views/signup/signup.dart';
import 'package:zischify/views/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  init();
  runApp(App());
}

void init() {
  injector.map<HTTPService>(new HTTPService());
  injector.map<AuthService>(new AuthService());
  injector.map<RequestService>(new RequestService());
  injector.map<UserService>(new UserService());
}

ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Palette.scaffold,
    canvasColor: Palette.scaffold, // Palette.scaffold,
    primaryColorDark: Palette.scaffold,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Roboto');

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zischify',
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: theme,
      routes: {
        '/': (BuildContext context) => ZischifyHome(),
        '/signup': (BuildContext context) => SignUpView()
      },
    );
  }
}

class ZischifyHome extends View {
  ZischifyHome() : super([]);
}
