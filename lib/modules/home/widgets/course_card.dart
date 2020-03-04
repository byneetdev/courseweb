import 'package:adminbyneet/listItem/model/course.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  CourseCard({this.course});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double containerWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 250
              : 400;
      double containerHeight =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 150
              : 300;
      return Container(
        width: containerWidth,
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: <Widget>[
            Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    image: AssetImage(course.urlimage),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                course.title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              padding: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.blueAccent),
              child: Text(
                course.classStatus,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
