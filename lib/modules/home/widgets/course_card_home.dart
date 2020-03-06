import 'package:adminbyneet/listItem/model/course.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseCardHome extends StatelessWidget {
  final Course course;
  CourseCardHome({this.course});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double containerWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 250
              : 400;
      double containerHeight =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 120
              : 270;
      return Container(
        width: containerWidth,
        margin: EdgeInsets.only(right: 20),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  course.creatorName,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.amber,
                    ),
                    child: Text(
                      course.classStatus,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 7),
                      Text(
                        course.rating.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
