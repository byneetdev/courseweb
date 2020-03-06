import 'package:adminbyneet/modules/home/widgets/course_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/customSwiper.dart';
import 'package:adminbyneet/modules/home/widgets/feature_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/popular_course_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/search_home_item.dart';
import 'package:adminbyneet/modules/home/widgets/testimonial_home_item.dart';
import 'package:adminbyneet/modules/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text("Byneet Course"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomCarousel(),
              SizedBox(height: 70),
              SearchHomeItem(),
              SizedBox(height: 50),
              FeatureHomeItem(),
              SizedBox(height: 50),
              PopularCourseHomeItem(),
              SizedBox(height: 20),
              CourseHomeItem(),
              SizedBox(height: 50),
              TestimonialHomeItem(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
      drawer: NavigationDrawer(),
    );
  }
}
