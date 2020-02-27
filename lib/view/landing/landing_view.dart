import 'package:adminbyneet/view/landing/landingContent_desktop.dart';
import 'package:adminbyneet/view/landing/landingContent_mobile.dart';
import 'package:adminbyneet/widgets/centered_view/centered_view.dart';
import 'package:adminbyneet/widgets/navigation_bar/navigation_bar.dart';
import 'package:adminbyneet/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        key: scaffoldKey,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(scaffoldKey: scaffoldKey),
              Expanded(
                  child: ScreenTypeLayout(
                mobile: LandingContentMobile(),
                desktop: LandingContentDesktop(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
