import 'package:adminbyneet/view/register/register_desktop.dart';
import 'package:adminbyneet/view/register/register_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: RegisterMobile(),
      desktop: RegisterDesktop(),
    );
  }
}
