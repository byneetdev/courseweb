import 'package:adminbyneet/modules/login/screens/login_desktop.dart';
import 'package:adminbyneet/modules/login/screens/login_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginMobile(),
      desktop: LoginDesktop(),
    );
  }
}
