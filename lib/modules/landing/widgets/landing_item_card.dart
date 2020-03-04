import 'package:adminbyneet/listItem/model/course.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingItemCard extends StatelessWidget {
  final Course course;
  LandingItemCard({this.course});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double widthSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 250
                : 350;
        double heightSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 300
                : 400;
        double textSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 13
                : 20;
        double radiusSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 15
                : 20;
        double textSizeIcon =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 10
                : 15;
        double iconSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 13
                : 18;
        double paddingSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 5
                : 10;

        return Container(
          width: widthSize,
          height: heightSize,
          margin: EdgeInsets.only(right: 20, bottom: 10, top: 10),
          child: Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(course.urlimage),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: <Widget>[
                      Text(
                        course.title,
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildItems(course.rating.toString(), Icons.star,
                              textSizeIcon, iconSize, paddingSize),
                          buildItems("7k", Icons.account_circle, textSizeIcon,
                              iconSize, paddingSize),
                          buildItems("120k", Icons.visibility, textSizeIcon,
                              iconSize, paddingSize),
                          SizedBox(width: paddingSize),
                          CircleAvatar(
                            radius: radiusSize,
                            backgroundColor: Colors.black12,
                            backgroundImage: AssetImage("assets/images/ve.jpg"),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildItems(String title, IconData icon, double textSizeIcon,
      double iconSize, double paddingSize) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(),
          ),
          child: Icon(
            icon,
            size: iconSize,
          ),
        ),
        SizedBox(width: paddingSize),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontSize: textSizeIcon,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: iconSize),
      ],
    );
  }
}
