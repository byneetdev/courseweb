import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';

class HomeDetailSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(16),
              child: Image.asset("assets/images/girl4.jpg", fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          children: <Widget>[
            Text(
              "Do you want to be an instructor",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            CallToAction(title: "Join Sekarang")
          ],
        )
      ],
    );
  }
}
