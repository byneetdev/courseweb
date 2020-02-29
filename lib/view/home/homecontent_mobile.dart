import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/widgets/course_details/course_details_one.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CourseDetailsOne(),
          SizedBox(height: 100),
          CallToAction(title: "Join Course"),
        ],
      ),
    );
  }
}
