import 'package:flutter/material.dart';

class LandingDetailsThree extends StatelessWidget {
  final String description;
  final String title;
  final IconData icon;
  const LandingDetailsThree({
    @required this.description,
    @required this.title,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.pink[50],
            ),
            child: Icon(
              icon,
              color: Colors.pink,
              size: 25,
            ),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 15),
          Text(
            description,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
