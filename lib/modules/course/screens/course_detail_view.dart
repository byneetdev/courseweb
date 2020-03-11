import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/screens/course_detail_desktop.dart';
import 'package:adminbyneet/modules/course/screens/course_detail_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetailView extends StatelessWidget {
  final Course course;
  CourseDetailView({this.course});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CourseDetailMobile(course: course),
      desktop: CourseDetailDesktop(course: course),
    );
  }
}
