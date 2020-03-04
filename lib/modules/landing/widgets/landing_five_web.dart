import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_button_web.dart';
import 'package:flutter/material.dart';

class LandingFiveWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 75.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            feature8,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 500,
                child: Text(
                  feature9,
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              LandingButton(title: feature10)
            ],
          ),
        ],
      ),
    );
  }
}
