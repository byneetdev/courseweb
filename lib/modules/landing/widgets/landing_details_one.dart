import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingDetailOne extends StatelessWidget {
  final String title;
  final String description;
  LandingDetailOne({this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 35
                : 50;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 16
                : 21;
        return Container(
          width: 500.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                textAlign: textAlignment,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // height: 0.9,
                  fontSize: titleSize,
                ),
              ),
              SizedBox(height: 20),
              Text(
                description,
                textAlign: textAlignment,
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
              ),
            ],
          ),
        );
      },
    );
  }
}
