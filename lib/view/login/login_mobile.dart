import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/widgets/login_details/logincard.dart';
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
