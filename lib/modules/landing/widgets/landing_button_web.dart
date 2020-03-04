import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingButton extends StatelessWidget {
  final String title;
  LandingButton({this.title});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double fontSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 15
                : 20;
        return RaisedButton(
          onPressed: () {},
          color: Colors.yellow[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
            child: Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
