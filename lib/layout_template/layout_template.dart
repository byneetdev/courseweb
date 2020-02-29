import 'package:adminbyneet/routing/route_names.dart';
import 'package:adminbyneet/routing/router.dart';
import 'package:adminbyneet/services/navigator_services.dart';
import 'package:adminbyneet/widgets/centered_view/centered_view.dart';
import 'package:adminbyneet/widgets/navigation_bar/navigation_bar.dart';
import 'package:adminbyneet/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../locator.dart';

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
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(scaffoldKey: scaffoldKey),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: CourseRoute,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
