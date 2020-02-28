import 'package:adminbyneet/view/login/login_desktop.dart';
import 'package:adminbyneet/view/login/login_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginMobile(),
      desktop: LoginDesktop(),
    );
  }
}
