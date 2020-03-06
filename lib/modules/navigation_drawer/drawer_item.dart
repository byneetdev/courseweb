import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final Function onTap;
  DrawerItem({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
    );
  }
}
