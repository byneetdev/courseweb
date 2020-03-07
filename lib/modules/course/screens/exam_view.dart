import 'package:adminbyneet/modules/course/screens/exam_desktop.dart';
import 'package:adminbyneet/modules/course/screens/exam_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExamView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ExamMobile(),
      desktop: ExamDesktop(),
    );
  }
}
