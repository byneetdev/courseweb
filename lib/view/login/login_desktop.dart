import 'package:adminbyneet/widgets/login_details/login_card.dart';
import 'package:flutter/material.dart';

class LoginDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.black12,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginCard(),
            Expanded(
                child: Center(
              child:
                  Image.asset("assets/images/lp_image.png", fit: BoxFit.cover),
            ))
          ],
        ),
      ),
    );
  }
}
