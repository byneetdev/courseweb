import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/modules/home/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CourseHomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 430,
      margin: EdgeInsets.only(left: 70),
      child: ListView.builder(
        itemCount: dummyCourse.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var course = dummyCourse[index];
          return CourseCard(course: course);
        },
      ),
    );
  }
}
