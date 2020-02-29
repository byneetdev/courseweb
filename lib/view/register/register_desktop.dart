import 'package:adminbyneet/widgets/register_details/register_card.dart';
import 'package:flutter/material.dart';

class RegisterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          RegisterCard(),
          Expanded(
              child: Center(
            child: Image.asset(
              "assets/images/lp_image.png",
              fit: BoxFit.cover,
            ),
          ))
        ],
      ),
    );
  }
}
