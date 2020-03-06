import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/course/screens/course_view.dart';
import 'package:adminbyneet/modules/navigation_drawer/drawer_header.dart';
import 'package:adminbyneet/modules/navigation_drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          HeaderDrawer(),
          DrawerItem(
              title: xKursus,
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseView()))),
          DrawerItem(title: xKontak),
          DrawerItem(title: xTentang),
          DrawerItem(title: kLogin),
          DrawerItem(title: kDaftar)
        ],
      ),
    );
  }
}
