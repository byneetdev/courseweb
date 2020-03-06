import 'package:adminbyneet/modules/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderCourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/business.jpg"),
            fit: BoxFit.cover,
          )),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.black54, Colors.black54],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                ),
              ),
              sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                  ? Container()
                  : sizingInformation.deviceScreenType ==
                          DeviceScreenType.Tablet
                      ? Container()
                      : NavigationBar(),
              Center(
                child: Text(
                  kKursus,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
