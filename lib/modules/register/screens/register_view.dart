import 'package:adminbyneet/modules/register/screens/register_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // mobile: RegisterMobile(),
      desktop: RegisterDesktop(),
    );
  }
}
