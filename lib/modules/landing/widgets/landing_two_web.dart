import 'package:adminbyneet/constants/lang.dart';
import 'package:flutter/material.dart';

class LandingTwoWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildItems(feature1, Icons.access_time),
          SizedBox(width: 25),
          buildItems(feature3, Icons.group),
          SizedBox(width: 25),
          buildItems(feature4, Icons.book),
        ],
      ),
    );
  }

  Widget buildItems(String title, IconData icon) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.indigo,
          child: Icon(
            icon,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
