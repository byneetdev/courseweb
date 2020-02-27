import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingCategoriesItems extends StatelessWidget {
  final String title;
  final String urlimage;
  LandingCategoriesItems({
    @required this.title,
    @required this.urlimage,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 14
                : 20;
        double widthContainer =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 120
                : 200;
        double heightContainer =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 65
                : 150;
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: widthContainer,
                height: heightContainer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(urlimage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                title,
                style: TextStyle(
                  fontSize: titleSize,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        );
      },
    );
  }
}
