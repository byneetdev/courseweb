import 'package:adminbyneet/modules/course/screens/course_desktop.dart';
import 'package:adminbyneet/modules/course/screens/course_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CourseMobile(),
      // tablet: CourseTablet(),
      desktop: CourseDesktop(),
    );
  }
}
