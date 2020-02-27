import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/widgets/course_details/course_detail.dart';
import 'package:adminbyneet/widgets/landing_details/landing_categories_items.dart';
import 'package:adminbyneet/widgets/landing_details/landing_categories_title.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_four.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_three.dart';
import 'package:adminbyneet/widgets/landing_details/landing_details_two.dart';
import 'package:flutter/material.dart';

class LandingContentMobile extends StatelessWidget {
  const LandingContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30),
          CourseDetails(),
          SizedBox(height: 100),
          CallToAction(title: "Get Started"),
          SizedBox(height: 60),
          LandingDetailsTwo(),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LandingDetailsThree(
                  description:
                      "Best way to learn is by using skill. That's why every class has a project that lets you practice and get feedback",
                  title: "Expert Instructor",
                  icon: Icons.group),
              SizedBox(width: 20),
              LandingDetailsThree(
                  description:
                      "Best way to learn is by using skill. That's why every class has a project that lets you practice and get feedback",
                  title: "Expert Instructor",
                  icon: Icons.group),
            ],
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LandingDetailsThree(
                  description:
                      "Best way to learn is by using skill. That's why every class has a project that lets you practice and get feedback",
                  title: "Expert Instructor",
                  icon: Icons.group),
              SizedBox(width: 20),
              LandingDetailsThree(
                  description:
                      "Best way to learn is by using skill. That's why every class has a project that lets you practice and get feedback",
                  title: "Expert Instructor",
                  icon: Icons.group),
            ],
          ),
          SizedBox(height: 60),
          Center(child: LandingDetailFour()),
          SizedBox(height: 45),
          Center(
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
          SizedBox(height: 60),
          Center(child: CallToAction(title: "Browse Categories")),
          SizedBox(height: 60),
          LandingCategoriesTitle(),
          // CallToAction(title: "Explore Course"),

          SizedBox(height: 60),
          SizedBox(height: 200)
        ],
      ),
    );
  }

  Widget cards() {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.red, // image: DecorationImage(
              //   image: AssetImage("assets/images/404.jpg"),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Design",
            style: TextStyle(
              fontSize: 25,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
