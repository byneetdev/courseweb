import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_button.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_item.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 70.0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logoapp.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NavBarItem(title: kKursus, onTap: null),
              SizedBox(width: 22),
              NavBarItem(title: kKontak, onTap: null),
              SizedBox(width: 22),
              NavBarItem(title: kTentang, onTap: null),
              SizedBox(width: 30),
              NavBarItem(title: kLogin, onTap: null),
              SizedBox(width: 22),
              NavbarButton(title: kDaftar),
            ],
          )
        ],
      ),
    );
  }
}
