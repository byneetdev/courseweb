import 'package:adminbyneet/modules/landing/screens/landing_view.dart';
import 'package:adminbyneet/modules/navigation_bar/screens/navigation_bar.dart';
import 'package:adminbyneet/modules/navigation_drawer/screens/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin',
      theme: ThemeData(fontFamily: "Nunito"),
      home: LayoutTemplate(),
    );
  }
}

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        key: scaffoldKey,
        //kalo layout size mobile, bakal muncul drawer / menu samping
        //widget ini ada di folder navigation_drawer
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            //navigation bar yang menampilkan menu-menu di paling atas pada view
            //terdapat di folder navigation_Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: NavigationBar(scaffoldKey: scaffoldKey),
            ),
            //inital route
            //widget pertama dibuka atau landing page user baru.
            Expanded(
              child: LandingView(),
            )
          ],
        ),
      ),
    );
  }
}
