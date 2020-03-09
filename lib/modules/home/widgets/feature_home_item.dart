import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FeatureHomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? Column(
                children: <Widget>[
                  buildItem(Icons.access_time, xAkses),
                  SizedBox(height: 12),
                  buildItem(Icons.access_time, xAkses),
                  SizedBox(height: 12),
                  buildItem(Icons.access_time, xAkses),
                ],
              )
            : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
                ? Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildItem(Icons.access_time, xAkses),
                      SizedBox(height: 12),
                      buildItem(Icons.access_time, xAkses),
                      SizedBox(height: 12),
                      buildItem(Icons.access_time, xAkses),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildItem(Icons.access_time, xAkses),
                      buildItem(Icons.access_time, xAkses),
                      buildItem(Icons.access_time, xAkses),
                    ],
                  ),
      );
    });
  }

  Widget buildItem(IconData icon, String title) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Color(primaryColor),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 12),
        Text(
          title,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
