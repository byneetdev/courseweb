import 'package:adminbyneet/widgets/login_details/login_card.dart';
import 'package:flutter/material.dart';

class LoginMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[LoginCard()],
      ),
    );
  }
}
