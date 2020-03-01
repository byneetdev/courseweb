import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingDetailFour extends StatelessWidget {
  final String title;
  final String description;
  LandingDetailFour({this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 20
                : 50;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 16
                : 21;
        return Container(
          width: 1000.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title ?? "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // height: 0.9,
                  fontSize: titleSize,
                ),
              ),
              SizedBox(height: 20),
              Text(
                description ?? "",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
              ),
            ],
          ),
        );
      },
    );
  }
}
