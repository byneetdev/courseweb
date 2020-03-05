import 'package:adminbyneet/modules/home/widgets/course_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/customSwiper.dart';
import 'package:adminbyneet/modules/home/widgets/feature_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/popular_course_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/search_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/testimonial_home_item.dart';
import 'package:adminbyneet/modules/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NavigationBar(),
              CustomCarousel(),
              SizedBox(height: 100),
              SearchHomeItem(),
              SizedBox(height: 70),
              FeatureHomeItem(),
              SizedBox(height: 70),
              PopularCourseHomeItem(),
              SizedBox(height: 20),
              CourseHomeItem(),
              SizedBox(height: 70),
              TestimonialHomeItem(),
              SizedBox(height: 500),
            ],
          ),
        ),
      ),
    );
  }
}
