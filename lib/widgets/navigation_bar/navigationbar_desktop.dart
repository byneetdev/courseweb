import 'package:adminbyneet/routing/route_names.dart';
import 'package:adminbyneet/services/navigator_services.dart';
import 'package:adminbyneet/widgets/navigation_bar/navbar_button.dart';
import 'package:adminbyneet/widgets/navigation_bar/navbar_item.dart';
import 'package:adminbyneet/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class NavigationbarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(title: "Home", navigationPath: HomeRoute),
              SizedBox(width: 30),
              NavBarItem(title: "Kursus", navigationPath: CourseRoute),
              SizedBox(width: 30),
              NavBarItem(title: "Bantuan", navigationPath: HelpRoute),
              SizedBox(width: 30),
              NavBarItem(title: "Tentang Kami", navigationPath: AboutRoute),
              SizedBox(width: 30),
              Container(
                width: 2,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(width: 60),
              Row(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.pink, size: 25),
                  SizedBox(width: 10.0),
                  NavBarItem(title: "Login", navigationPath: LoginRoute),
                ],
              ),
              SizedBox(width: 60),
              NavbarButton(
                title: "Daftar",
                onPressed: () =>
                    locator<NavigationService>().navigateTo(RegisterRoute),
              )
            ],
          )
        ],
      ),
    );
  }
}
