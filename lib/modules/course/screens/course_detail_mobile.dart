import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/screens/exam_mobile.dart';
import 'package:adminbyneet/modules/course/widgets/course_button_outline.dart';
import 'package:adminbyneet/modules/course/widgets/curriculum_widget.dart';
import 'package:flutter/material.dart';

class CourseDetailMobile extends StatelessWidget {
  final Course course;
  CourseDetailMobile({this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                course.urlimage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 350.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      course.title,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      course.description,
                      style: TextStyle(
                        fontSize: 20.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(primaryColor),
                        ),
                        SizedBox(width: 13.0),
                        Text(
                          course.rating.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Dibuat oleh : ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          // color: Color(primaryColor),
                        ),
                      ),
                      TextSpan(
                        text: course.creator,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(primaryColor),
                        ),
                      ),
                    ])),
                    SizedBox(height: 20.0),
                    CourseButtonOutline(
                      title: xDaftarkeWishlist,
                      icon: Icons.favorite_border,
                      onTap: () {},
                    ),
                    SizedBox(height: 12),
                    CourseButtonOutline(
                      title: xBagikan,
                      icon: Icons.share,
                      onTap: () {},
                    ),
                    SizedBox(height: 30),
                    Text(
                      xKurikulum,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30),
                    Wrap(
                      children: <Widget>[
                        CurriculumWidget(theory: course.theories)
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExamMobile(),
              ));
        },
        backgroundColor: Color(primaryColor),
        label: Text(
          "Daftar Kelas",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
