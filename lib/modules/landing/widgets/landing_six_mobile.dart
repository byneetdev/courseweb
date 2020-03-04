import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_item_card.dart';
import 'package:flutter/material.dart';

class LandingSixMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCourse.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var course = dummyCourse[index];
        return LandingItemCard(course: course);
      },
    );
  }
}
