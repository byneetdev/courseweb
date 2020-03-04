import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';

class NavbarButton extends StatelessWidget {
  final String title;
  NavbarButton({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueAccent,
              Colors.blue[200],
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: RaisedButton(
        onPressed: () {},
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
