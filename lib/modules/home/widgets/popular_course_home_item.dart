import 'package:adminbyneet/constants/lang.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PopularCourseHomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double titleSize1 =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 17
              : 25;
      double titleSize2 =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 30
              : 50;
      return Container(
        margin: EdgeInsets.only(left: 70),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildCircle(),
                SizedBox(width: 12),
                buildCircle(),
                SizedBox(width: 16),
                Text(
                  kSkillBaru,
                  style: TextStyle(
                    fontSize: titleSize1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(width: 16),
                buildCircle(),
                SizedBox(width: 12),
                buildCircle(),
              ],
            ),
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$xPopular ",
                    style: TextStyle(
                      fontSize: titleSize2,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: xKursus,
                    style: TextStyle(
                      fontSize: titleSize2,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget buildCircle() {
    return CircleAvatar(
      radius: 5,
      backgroundColor: Colors.blueAccent,
    );
  }
}
