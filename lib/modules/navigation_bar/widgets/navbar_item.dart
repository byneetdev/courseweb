import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final Function navigationPath;
  NavBarItem({this.title, this.navigationPath});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigationPath,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
