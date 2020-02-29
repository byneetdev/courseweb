import 'package:adminbyneet/widgets/course_details/course_details_one.dart';
import 'package:adminbyneet/widgets/course_details/course_details_two.dart';
import 'package:adminbyneet/widgets/course_details/course_item_card.dart';
import 'package:flutter/material.dart';

class CourseDesktop extends StatelessWidget {
  const CourseDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CourseDetailsOne(),
          SizedBox(height: 40),
          CourseDetailTwo(),
          SizedBox(height: 40),
          GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
            ),
            itemBuilder: (context, index) {
              return CourseItemCard();
            },
          ),
          SizedBox(height: 299),
        ],
      ),
    );
  }
}
