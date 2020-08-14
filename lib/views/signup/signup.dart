import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:zischify/services/auth.service.dart';
import 'package:zischify/src/di/injector.dart';

class SignUpView extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  final String redirectURL = 'https://vaorra.net';
  final AuthService _authService = injector.get<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
      initialUrl:
          "https://discord.com/api/oauth2/authorize?client_id=740854356592820254&redirect_uri=https%3A%2F%2Fvaorra.net&response_type=code&scope=identify%20email",
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
      onPageFinished: (url) {
        if (url.startsWith(redirectURL)) {
          String code = url.split("?code=").last;
          _authService.auth(code);
          Navigator.pop(context);
        }
      },
      gestureNavigationEnabled: true,
    ));
  }
}
