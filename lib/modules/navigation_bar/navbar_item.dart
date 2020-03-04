import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final Function onTap;
  const NavBarItem({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      hoverColor: Colors.redAccent,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
