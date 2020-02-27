import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/widgets/course_details/footer_view.dart';
import 'package:adminbyneet/widgets/landing_details/landing_categories_items.dart';
import 'package:adminbyneet/widgets/landing_details/landing_categories_title.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_five.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_four.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_one.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_three.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_two.dart';
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
            Row(
              children: <Widget>[
                LandingCourseOne(),
                Expanded(
                  child: Center(child: Image.asset("assets/images/dr3.png")),
                )
              ],
            ),
            SizedBox(height: 60),
            Row(
              children: <Widget>[
                LandingDetailsTwo(),
                SizedBox(width: 150.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          LandingDetailsThree(
                              description:
                                  "With an expert instructor to make sure course really well",
                              title: "Expert Instructor",
                              icon: Icons.group),
                          SizedBox(width: 25),
                          LandingDetailsThree(
                              description:
                                  "With an expert instructor to make sure course really well",
                              title: "Expert Instructor",
                              icon: Icons.group),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          LandingDetailsThree(
                              description:
                                  "With an expert instructor to make sure course really well",
                              title: "Expert Instructor",
                              icon: Icons.group),
                          SizedBox(width: 25),
                          LandingDetailsThree(
                              description:
                                  "With an expert instructor to make sure course really well",
                              title: "Expert Instructor",
                              icon: Icons.group),
                        ],
                      ),
                      SizedBox(height: 35.0),
                      CallToAction(
                        title: "Let's Get Started",
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 60),
            Center(child: LandingDetailFour()),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Center(
                child: Wrap(
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    LandingCategoriesItems(
                      title: "Development",
                      urlimage: "assets/images/development.png",
                    ),
                    LandingCategoriesItems(
                      title: "Design",
                      urlimage: "assets/images/design.jpg",
                    ),
                    LandingCategoriesItems(
                      title: "Business",
                      urlimage: "assets/images/business.jpg",
                    ),
                    LandingCategoriesItems(
                      title: "Marketing",
                      urlimage: "assets/images/marketing.jpg",
                    ),
                    LandingCategoriesItems(
                      title: "Photography",
                      urlimage: "assets/images/photography.jpg",
                    ),
                    LandingCategoriesItems(
                      title: "Video Editing",
                      urlimage: "assets/images/videoediting.jpg",
                    ),
                    LandingCategoriesItems(
                      title: "Web Development",
                      urlimage: "assets/images/webdevelopment.jpeg",
                    ),
                    LandingCategoriesItems(
                      title: "UI/UX Designer",
                      urlimage: "assets/images/exdesigner.jpeg",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(child: CallToAction(title: "Browse Categories")),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LandingCategoriesTitle(),
                SizedBox(width: 20),
                Expanded(
                  child: Center(child: CallToAction(title: "Explore Course")),
                )
              ],
            ),
            SizedBox(height: 60),
            Container(
              width: double.infinity,
              height: 400,
              // color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  LandingDetailFive(),
                  LandingDetailFive(),
                  LandingDetailFive(),
                  LandingDetailFive(),
                ],
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
