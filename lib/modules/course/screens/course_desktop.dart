import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/modules/course/widgets/course_grid_view.dart';
import 'package:adminbyneet/modules/course/widgets/header_course_item.dart';
import 'package:adminbyneet/modules/course/widgets/search_course_item.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CourseDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderCourseItem(),
              SizedBox(height: 100),
              SearchCourseItem(),
              SizedBox(height: 100),
              CourseGridView(),
              SizedBox(height: 1000),
            ],
          ),
        ),
      ),
    );
  }
}
