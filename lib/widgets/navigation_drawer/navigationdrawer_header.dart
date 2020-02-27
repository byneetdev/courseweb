import 'package:adminbyneet/constants/app_color.dart';
import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "SKILL UP NOW",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            "TAP HERE",
            style: TextStyle(
              // fontSize: 18.0,
              // fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
