import 'package:adminbyneet/view/course/course_desktop.dart';
import 'package:adminbyneet/view/course/course_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseView extends StatelessWidget {
  const CourseView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CourseMobile(),
      desktop: CourseDesktop(),
    );
  }
}
