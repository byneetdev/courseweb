import 'package:adminbyneet/constants/lang.dart';
import 'package:flutter/material.dart';

class LandingTwoMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2.5 / 2.0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          buildItems(feature1, Icons.access_time),
          buildItems(feature2, Icons.picture_in_picture),
          buildItems(feature3, Icons.group),
          buildItems(feature4, Icons.book),
        ],
      ),
    );
  }

  Widget buildItems(String title, IconData icon) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.indigo,
          child: Icon(
            icon,
            color: Colors.white,
            size: 25.0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
