import 'package:adminbyneet/modules/navigation_bar/widgets/navbar_button.dart';
import 'package:adminbyneet/modules/navigation_drawer/widgets/drawer_item.dart';
import 'package:adminbyneet/modules/navigation_drawer/widgets/navigationdrawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 16),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavigationDrawerHeader(),
              DrawerItem(
                  title: "Home",
                  icon: Icons.library_books,
                  navigationPath: null),
              DrawerItem(
                  title: "Tentang Kami",
                  icon: Icons.info,
                  navigationPath: null),
              DrawerItem(
                  title: "Kursus", icon: Icons.menu, navigationPath: null),
              DrawerItem(
                  title: "Bantuan", icon: Icons.help, navigationPath: null),
              DrawerItem(
                  title: "Login", icon: Icons.person, navigationPath: null),
              SizedBox(height: 25.0),
              NavbarButton(
                title: "Daftar",
                onPressed: () => null,
              ),
            ],
          ),
        ));
  }
}
