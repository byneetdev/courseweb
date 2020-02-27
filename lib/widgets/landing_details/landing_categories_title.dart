import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingCategoriesTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 20
                : 35;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 14
                : 25;
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? TextAlign.center
                : TextAlign.left;
        return Container(
          width: 500.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Our popular courses you will like it",
                textAlign: textAlignment,
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              Text(
                "Here is our popular course that might you want to learn from our expert instuctor",
                textAlign: textAlignment,
                style: TextStyle(
                  fontSize: descriptionSize,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
