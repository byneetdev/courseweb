import 'package:adminbyneet/modules/landing/screens/landing_view.dart';
import 'package:adminbyneet/widgets/navigation_bar/navigation_bar.dart';
import 'package:adminbyneet/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        key: scaffoldKey,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: NavigationBar(scaffoldKey: scaffoldKey),
            ),
            //inital route
            Expanded(
              child: LandingView(),
            )
          ],
        ),
      ),
    );
  }
}
