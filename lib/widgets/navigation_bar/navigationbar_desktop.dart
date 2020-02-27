import 'package:adminbyneet/widgets/navigation_bar/navbar_button.dart';
import 'package:adminbyneet/widgets/navigation_bar/navbar_item.dart';
import 'package:adminbyneet/widgets/navigation_bar/navbar_logo.dart';
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
              NavBarItem(title: "Home"),
              SizedBox(width: 30),
              NavBarItem(title: "Kursus"),
              SizedBox(width: 30),
              NavBarItem(title: "Bantuan"),
              SizedBox(width: 30),
              NavBarItem(title: "Tentang Kami"),
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
                  NavBarItem(title: "Login"),
                ],
              ),
              SizedBox(width: 60),
              NavbarButton(
                title: "Daftar",
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
