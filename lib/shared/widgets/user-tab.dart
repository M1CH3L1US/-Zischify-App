import 'package:flutter/material.dart';
import 'package:zischify/services/auth.service.dart';
import 'package:zischify/src/styles/Color.dart';
import 'package:zischify/src/styles/Heading.dart';
import 'package:zischify/src/styles/SubTitle.dart';

class UserInformationTab extends StatefulWidget {
  @override
  UserInformationState createState() => UserInformationState();
}

class UserInformationState extends State<UserInformationTab> {
  Map<String, dynamic> _profile;

  @override
  initState() {
    super.initState();
    authService.profile.listen((state) => setState(() => _profile = state));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        color: blackPrimary,
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
                      image: NetworkImage(_profile['avatarURL']),
                      fit: BoxFit.fill),
                ),
              ),
              Flexible(
                  child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      h5(_profile['username']),
                      sub1(_profile['email']),
                    ]),
              ))
            ]
          ],
        ));
  }
}
