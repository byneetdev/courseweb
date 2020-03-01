import 'package:adminbyneet/listItem/model/course.dart';
import 'package:flutter/material.dart';

class CourseItemCard extends StatelessWidget {
  final Course course;
  CourseItemCard({this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 400,
      margin: EdgeInsets.only(right: 20, bottom: 10, top: 10),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(course.urlimage),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: <Widget>[
                  Text(
                    course.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildItems(course.rating.toString(), Icons.star),
                      buildItems("7k", Icons.account_circle),
                      buildItems("120k", Icons.visibility),
                      SizedBox(width: 30),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black12,
                        backgroundImage: AssetImage("assets/images/ve.jpg"),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildItems(String title, IconData icon) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(),
          ),
          child: Icon(
            icon,
            size: 18,
          ),
        ),
        SizedBox(width: 10),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
