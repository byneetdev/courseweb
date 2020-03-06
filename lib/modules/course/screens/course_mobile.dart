import 'package:adminbyneet/modules/course/widgets/course_grid_view.dart';
import 'package:adminbyneet/modules/course/widgets/header_course_item.dart';
import 'package:adminbyneet/modules/course/widgets/search_course_item.dart';
import 'package:flutter/material.dart';

class CourseMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
        title: Text("Byneet Course"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderCourseItem(),
              // Container(
              //   width: double.infinity,
              //   height: 300,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //     image: AssetImage("assets/images/business.jpg"),
              //     fit: BoxFit.cover,
              //   )),
              // ),
              SizedBox(height: 70),
              SearchCourseItem(),
              SizedBox(height: 70),
              CourseGridView(),
              SizedBox(height: 1000),
            ],
          ),
        ),
      ),
    );
  }
}
