import 'package:flutter/material.dart';

class HomeDetailFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 500.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Helping people grow\ntheir careers. every day!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Our training materials are easy to edit and customize. We provide them to you in Word and PowerPoint formats, so you can make whatever changes you like using Microsoft Office",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 25),
        Expanded(
          child: Center(
            child: Material(
              borderRadius: BorderRadius.circular(16.0),
              elevation: 6.0,
              child: Image.asset(
                "assets/images/girl3.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
