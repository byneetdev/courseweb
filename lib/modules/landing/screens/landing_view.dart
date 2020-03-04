import 'package:adminbyneet/modules/landing/screens/landing_mobile.dart';
import 'package:adminbyneet/modules/landing/screens/landing_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LandingMobile(),
      desktop: LandingWeb(),
    );
  }
}
