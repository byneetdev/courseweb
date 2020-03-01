import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_one.dart';
import 'package:adminbyneet/view/footer/footer_view.dart';
import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_categories_items.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_categories_title.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_five.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_four.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_three.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_details_two.dart';
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
          Container(
            color: Colors.pink[50],
            padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 40),
            child: LandingDetailOne(title: landing1, description: description1),
          ),
          SizedBox(height: 30),
          SizedBox(width: 250, child: CallToAction(title: "Get Started")),
          SizedBox(height: 60),
          Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 70.0,
                vertical: 40,
              ),
              child: LandingDetailsTwo()),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
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
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
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
          SizedBox(height: 60),
          Container(
            width: double.infinity,
            height: 300,
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
        ],
      ),
    );
  }
}
