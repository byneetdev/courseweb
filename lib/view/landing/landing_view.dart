import 'package:adminbyneet/view/landing/landingContent_desktop.dart';
import 'package:adminbyneet/view/landing/landingContent_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LandingContentMobile(),
      desktop: LandingContentDesktop(),
    );
  }
}
