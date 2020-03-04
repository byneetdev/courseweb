import 'package:adminbyneet/modules/navigation_bar/widgets/navbar_button.dart';
import 'package:adminbyneet/modules/navigation_bar/widgets/navbar_item.dart';
import 'package:adminbyneet/modules/navigation_bar/widgets/navbar_logo.dart';
import 'package:flutter/material.dart';

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
              NavBarItem(
                title: "Home",
                navigationPath: null,
                // navigationPath: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomeContentDesktop(),
                //     )),
              ),
              SizedBox(width: 30),
              NavBarItem(title: "Kursus", navigationPath: null),
              SizedBox(width: 30),
              NavBarItem(title: "Bantuan", navigationPath: null),
              SizedBox(width: 30),
              NavBarItem(title: "Tentang Kami", navigationPath: null),
              SizedBox(width: 30),
              Container(
                width: 2,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(width: 40),
              Row(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.pink, size: 25),
                  SizedBox(width: 10.0),
                  NavBarItem(title: "Login", navigationPath: null),
                ],
              ),
              SizedBox(width: 40),
              NavbarButton(
                title: "Daftar",
                onPressed: () => null,
              )
            ],
          )
        ],
      ),
    );
  }
}
