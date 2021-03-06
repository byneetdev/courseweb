import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/widgets/curriculum_widget.dart';
import 'package:flutter/material.dart';

class CourseDetailWidget extends StatelessWidget {
  final Course course;
  CourseDetailWidget({this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            course.title,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            course.description,
            style: TextStyle(
              fontSize: 20,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "$xPeringkat: ${course.rating.toString()}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: <Widget>[
              buildButton(Icons.favorite_border, xDaftarkeWishlist),
              SizedBox(width: 20),
              buildButton(Icons.share, xBagikan),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            xKurikulum,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Wrap(
            children: <Widget>[CurriculumWidget(theory: course.theories)],
          ),
        ],
      ),
    );
  }

  Widget buildButton(IconData icon, String title) {
    return OutlineButton(
      borderSide: BorderSide(color: Colors.blue),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 10),
            Icon(icon, color: Colors.blue)
          ],
        ),
      ),
    );
  }
}
