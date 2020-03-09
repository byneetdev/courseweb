import 'package:adminbyneet/constants/app_color.dart';
import 'package:flutter/material.dart';

class NavbarButton extends StatelessWidget {
  final String title;
  final Function onTap;
  NavbarButton({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: Color(primaryColor),
      ),
      child: RaisedButton(
        onPressed: onTap,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
