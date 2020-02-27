import 'package:adminbyneet/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationbarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  NavigationbarMobile({this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
          ),
          NavBarLogo(),
        ],
      ),
    );
  }
}
