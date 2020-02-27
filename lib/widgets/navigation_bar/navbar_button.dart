import 'package:flutter/material.dart';

class NavbarButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const NavbarButton({Key key, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.pink),
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.transparent,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.pink,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
