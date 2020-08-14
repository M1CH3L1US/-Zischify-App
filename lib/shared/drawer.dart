import 'package:flutter/material.dart';
import 'package:zischify/services/auth.service.dart';
import 'package:zischify/services/services.dart';
import 'package:zischify/shared/widgets/divider.dart';
import 'package:zischify/shared/widgets/user-tab.dart';
import 'package:zischify/src/di/injector.dart';
import 'package:zischify/src/styles/Palette.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<Map<String, dynamic>> navItems = [
      {
        'content': 'My Zisch Requests',
        'icon': Icons.thumb_up,
        'color': Palette.rbBlue()
      },
      {
        'content': 'Zisch Events',
        'icon': Icons.info_outline,
        'color': Palette.rbRed(),
      },
      {
        'content': 'Pending Zisch Requests',
        'icon': Icons.alarm,
        'color': Palette.rbYellow(),
      }
    ];

    return Container(
        color: Palette.scaffold,
        width: size.width,
        child: Drawer(
            child: Column(children: [
          UserInformationTab(),
          DividerBasicPadding(),
          Expanded(
              child: ListView(children: [
            ...navItems
                .map((e) => DrawerListItem(
                    content: e['content'],
                    icon: e['icon'],
                    iconColor: e['color']))
                .toList(),
          ])),
          DividerBasicPadding(),
          Expanded(flex: 2, child: Container()),
          RefreshUserProfileButton()
        ])));
  }
}

class RefreshUserProfileButton extends StatelessWidget {
  final UserService _userService = injector.get<UserService>();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => _userService.refreshUserProfile().listen((_) {}),
      child: Text('Refresh Data'),
      color: Colors.white,
    );
  }
}

class DrawerListItem extends StatelessWidget {
  final IconData icon;
  final String content;
  final Color iconColor;

  const DrawerListItem({Key key, this.icon, this.content, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () => {},
        child: Container(
          padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
          child: Row(children: [
            Icon(
              icon,
              color: iconColor,
              size: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  content,
                  style: TextStyle(
                      color: Palette.whiteHighlight,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.1),
                ))
          ]),
        ));
  }
}
