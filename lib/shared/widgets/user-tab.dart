import 'package:flutter/material.dart';
import 'package:zischify/models/models.dart';
import 'package:zischify/services/auth.service.dart';
import 'package:zischify/shared/widgets/divider.dart';
import 'package:zischify/src/di/injector.dart';
import 'package:zischify/src/styles/styles.dart';

class UserInformationTab extends StatefulWidget {
  @override
  UserInformationState createState() => UserInformationState();
}

class UserInformationState extends State<UserInformationTab> {
  Profile _profile;
  final AuthService _authService = injector.get<AuthService>();

  @override
  initState() {
    super.initState();
    _authService.profile.listen((state) => setState(() => _profile = state));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 100,
      width: size.width,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_profile != null) ...[
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(_profile.avatarURL), fit: BoxFit.fill),
              ),
            ),
            Flexible(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _profile.username,
                      style: TextStyle(
                          color: Palette.whiteHighlight,
                          fontSize: 20,
                          letterSpacing: 1.2),
                    ),
                    Text(
                      _profile.email,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14,
                          letterSpacing: 1.2),
                    )
                  ]),
            ))
          ]
        ],
      ),
    );
  }
}
