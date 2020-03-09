import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/course/screens/course_view.dart';
import 'package:adminbyneet/modules/course/widgets/exam_navigation.dart';
import 'package:adminbyneet/modules/course/widgets/exam_paper.dart';
import 'package:adminbyneet/modules/home/screens/home_view.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_button.dart';
import 'package:adminbyneet/modules/navigation_bar/navbar_item.dart';
import 'package:flutter/material.dart';

class ExamDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 80),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 100),
          child: Table(
            columnWidths: {1: FractionColumnWidth(0.3)},
            children: [
              TableRow(
                children: [
                  ExamPaper(),
                  ExamNavigation(),
                ],
              ),
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
