import 'package:adminbyneet/modules/landing/widgets/landing_details_three.dart';
import 'package:flutter/material.dart';

class LandingDetailsTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LandingDetailsThree(
                  description:
                      "With an expert instructor to make sure course really well",
                  title: "Expert Instructor",
                  icon: Icons.group),
              SizedBox(width: 25),
              LandingDetailsThree(
                  description:
                      "With an expert instructor to make sure course really well",
                  title: "Expert Instructor",
                  icon: Icons.group),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LandingDetailsThree(
                  description:
                      "With an expert instructor to make sure course really well",
                  title: "Expert Instructor",
                  icon: Icons.group),
              SizedBox(width: 25),
              LandingDetailsThree(
                  description:
                      "With an expert instructor to make sure course really well",
                  title: "Expert Instructor",
                  icon: Icons.group),
            ],
          ),
        ],
      ),
    );
  }
}
