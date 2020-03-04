import 'package:adminbyneet/constants/lang.dart';
import 'package:flutter/material.dart';

class LandingThreeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45.0),
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            feature5,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 18),
          Text(
            feature6,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              // fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
