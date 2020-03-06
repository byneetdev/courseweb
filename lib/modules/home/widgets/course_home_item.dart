import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/modules/home/widgets/course_card_home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseHomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      double heightContainer =
          size.deviceScreenType == DeviceScreenType.Mobile ? 300 : 430;
      return Container(
        width: double.infinity,
        height: heightContainer,
        margin: EdgeInsets.only(left: 70),
        child: ListView.builder(
          itemCount: dummyCourse.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var course = dummyCourse[index];
            return CourseCardHome(course: course);
          },
        ),
      );
    });
  }
}
