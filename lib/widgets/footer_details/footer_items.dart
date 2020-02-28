import 'package:flutter/material.dart';

class FooterItem extends StatelessWidget {
  final String title;
  final String item1;
  final String item2;
  final String item3;
  const FooterItem({this.title, this.item1, this.item2, this.item3});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 20),
        Text(
          item1,
          style: TextStyle(
            fontSize: 17,
            // fontWeight: FontWeight.w,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 14),
        Text(
          item2,
          style: TextStyle(
            fontSize: 17,
            // fontWeight: FontWeight.w,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 14),
        Text(
          item3,
          style: TextStyle(
            fontSize: 17,
            // fontWeight: FontWeight.w,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 14),
      ],
    );
  }
}
