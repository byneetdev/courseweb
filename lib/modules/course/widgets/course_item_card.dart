import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/screens/course_detail_view.dart';
import 'package:flutter/material.dart';

class CourseItemCard extends StatelessWidget {
  final Course course;
  CourseItemCard({this.course});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetailView(course: course),
            ));
      },
      child: Container(
        width: 500,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
          child: Column(
            children: <Widget>[
              Image.asset(
                course.urlimage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      course.title,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      course.creator,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: <Widget>[
                        Text(
                          course.rating.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(primaryColor),
                          ),
                        ),
                        Icon(Icons.star, color: Color(primaryColor))
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Rp. 700.000",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Chip(
                      label: Text(
                        course.status,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.deepOrange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
