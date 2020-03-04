import 'package:flutter/material.dart';

class LandingFourMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 34.0,
        crossAxisSpacing: 50.0,
        children: <Widget>[
          buildCard("Development"),
          buildCard("Marketing"),
          buildCard("Video Editing"),
          buildCard("Photography"),
        ],
      ),
    );
  }

  Widget buildCard(String title) {
    return Container(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/girl2.jpg",
              fit: BoxFit.cover,
            ),
            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
