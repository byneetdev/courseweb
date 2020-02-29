import 'package:flutter/material.dart';
import 'home_item_one.dart';

class HomeDetailTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        HomeItemOne(
          title: "Akses selamanya",
          icon: Icons.access_time,
        ),
        HomeItemOne(
          title: "Expert Instructor",
          icon: Icons.people,
        ),
        HomeItemOne(
          title: "10K online courses",
          icon: Icons.note,
        ),
      ],
    );
  }
}
