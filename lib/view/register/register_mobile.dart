import 'package:adminbyneet/widgets/register_details/register_card.dart';
import 'package:flutter/material.dart';

class RegisterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          RegisterCard(),
        ],
      ),
    );
  }
}
