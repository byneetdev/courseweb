import 'package:adminbyneet/widgets/home_details/home_card_two.dart';
import 'package:flutter/material.dart';

class HomeDetailFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            "What our students have to say",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 35.0),
        Wrap(
          spacing: 20.0,
          children: <Widget>[
            HomeCardTwo(),
            HomeCardTwo(),
          ],
        )
      ],
    );
  }
}
