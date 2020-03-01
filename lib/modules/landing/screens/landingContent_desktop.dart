import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_one.dart';
import 'package:adminbyneet/view/footer/footer_view.dart';
import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_categories_items.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_four.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_two.dart';
import 'package:adminbyneet/widgets/course_details/course_item_card.dart';
import 'package:flutter/material.dart';

class LandingContentDesktop extends StatelessWidget {
  const LandingContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.pink[50],
              padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 40),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      LandingDetailOne(
                        title: landing1,
                        description: description1,
                      ),
                      SizedBox(height: 30),
                      CallToAction(title: "Get Started")
                    ],
                  ),
                  Expanded(
                    child: Center(child: Image.asset("assets/images/dr3.png")),
                  )
                ],
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Row(
                children: <Widget>[
                  LandingDetailOne(
                    title: landing1,
                    description: description1,
                  ),
                  SizedBox(width: 150.0),
                  LandingDetailsTwo(),
                ],
              ),
            ),
            SizedBox(height: 100),
            Center(
                child: LandingDetailFour(
                    title: landing2, description: description2)),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Center(
                child: GridView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return LandingCategoriesItems(
                      title: "Development",
                      urlimage: "assets/images/development.png",
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(child: CallToAction(title: "Browse Categories")),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Center(
                  child: LandingDetailFour(
                      title: landing2, description: description2)),
            ),
            SizedBox(height: 60),
            Container(
              width: double.infinity,
              height: 400,
              margin: EdgeInsets.only(left: 70),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: dummyCourse.length,
                itemBuilder: (context, index) {
                  var course = dummyCourse[index];
                  return CourseItemCard(course: course);
                },
              ),
            ),
            SizedBox(height: 60),
            FooterView(),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
