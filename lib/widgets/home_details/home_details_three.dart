import 'package:adminbyneet/widgets/home_details/home_item_card.dart';
import 'package:flutter/material.dart';

class HomeDetailThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          HomeItemCard(),
          HomeItemCard(),
          HomeItemCard(),
          HomeItemCard(),
          HomeItemCard(),
          HomeItemCard(),
        ],
      ),
    );
  }
}
