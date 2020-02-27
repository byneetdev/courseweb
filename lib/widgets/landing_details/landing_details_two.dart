import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingDetailsTwo extends StatelessWidget {
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
                ? 20
                : 40;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 16
                : 21;
        double widthImage =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 250
                : 400;
        double heightImage =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 200
                : 300;
        return Container(
          width: widthImage,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "The World's Largest Selection of Courses",
                textAlign: textAlignment,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: titleSize,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Best way to learn is by using skill. That's why every class has a project that lets you practice and get feedback",
                textAlign: textAlignment,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: descriptionSize,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: widthImage,
                  height: heightImage,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage("assets/images/404.jpg"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.black12,
                            spreadRadius: 5,
                            offset: Offset(0.6, 0.4))
                      ]),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
