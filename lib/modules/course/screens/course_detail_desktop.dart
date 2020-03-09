import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/screens/course_view.dart';
import 'package:adminbyneet/modules/course/widgets/course_claim_card.dart';
import 'package:adminbyneet/modules/course/widgets/course_detail_widget.dart';
import 'package:adminbyneet/modules/home/screens/home_view.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_button.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_item.dart';
import 'package:flutter/material.dart';

class CourseDetailDesktop extends StatelessWidget {
  final Course course;
  CourseDetailDesktop({this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 70),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Table(
                // border: TableBorder.all(),
                columnWidths: {1: FractionColumnWidth(.3)},
                children: [
                  TableRow(
                    children: [
                      CourseDetailWidget(course: course),
                      CourseClaimCard(course: course),
                    ],
                  )
                ],
              ),
              SizedBox(height: 100)
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
                Container(
                  width: 5,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(width: 15),
                NavBarItem(title: kLogin, onTap: null),
                SizedBox(width: 22),
                NavbarButton(
                  title: kDaftar,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
