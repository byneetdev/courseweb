import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/modules/course/widgets/course_item_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CourseGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70.0),
      child: ResponsiveGridList(
        scroll: false,
        desiredItemWidth: 250,
        minSpacing: 10,
        children: dummyCourse.map((e) {
          return CourseItemCard(course: e);
        }).toList(),
      ),
    );
  }
}
