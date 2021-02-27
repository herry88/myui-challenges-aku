import 'package:flutter/material.dart';
import 'package:mycollection/TokoOnlineUI/model/drawermodel.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  List<DrawerModel> _drawerModel = <DrawerModel>[
    DrawerModel(title: 'Shop', url: 'shop'),
    DrawerModel(title: 'Profile', url: 'profile'),
    DrawerModel(title: 'Login', url: 'login'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // color: Colors.white,
      child: ListView(children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          accountName: Text('Herry'),
          accountEmail: Text(
            'herry08128@gmail.com',
          ),
        ),
        ListView()
      ]),
    );
  }
}
