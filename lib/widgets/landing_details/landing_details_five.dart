import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingDetailFive extends StatelessWidget {
  const LandingDetailFive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double widthContainer =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 250
                : 350;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 15
                : 20;
        double priceSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 15
                : 20;

        return Container(
          width: widthContainer,
          margin: EdgeInsets.only(right: 25.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/photography.jpg"),
                        fit: BoxFit.cover),
                  ),
                )),
                SizedBox(height: 10),
                Text(
                  "UI/UX Designer",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Make a better ui/ux problem solution for your product",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Rp. 150.000,00",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: priceSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
