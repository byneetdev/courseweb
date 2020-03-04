import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';

class LandingOneMobile extends StatelessWidget {
  final String title;
  final String description;
  LandingOneMobile({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 40.0),
      color: Color(0xFF1F4992),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.7,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 250,
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orange[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  child: Text(
                    getStarted,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            )
            // Center(child: CallToAction(title: "Get Started"))
          ],
        ),
      ),
    );
  }
}
