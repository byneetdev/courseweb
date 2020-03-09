import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/course/screens/course_view.dart';
import 'package:adminbyneet/modules/course/widgets/course_grid_view.dart';
import 'package:adminbyneet/modules/course/widgets/header_course_item.dart';
import 'package:adminbyneet/modules/course/widgets/search_course_item.dart';
import 'package:adminbyneet/modules/home/screens/home_view.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_button.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_item.dart';
import 'package:flutter/material.dart';

class CourseDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderCourseItem(),
              SizedBox(height: 100),
              SearchCourseItem(),
              SizedBox(height: 100),
              CourseGridView(),
              SizedBox(height: 1000),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarWidget(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeView(),
                    ));
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logoapp.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                NavBarItem(
                    title: kKursus,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseView(),
                          ));
                    }),
                SizedBox(width: 22),
                NavBarItem(title: kKontak, onTap: null),
                SizedBox(width: 22),
                NavBarItem(title: kTentang, onTap: null),
                SizedBox(width: 15),
                // Container(
                //   width: 5,
                //   height: 50,
                //   decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                // ),
                // SizedBox(width: 15),
                NavBarItem(title: kLogin, onTap: null),
                SizedBox(width: 22),
                NavbarButton(title: kDaftar, onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
