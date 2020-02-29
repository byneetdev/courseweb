import 'package:flutter/material.dart';

class CourseDetailTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Our Courses",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Container(
              width: 80.0,
              height: 3,
              color: Colors.amber,
            )
          ],
        ),
        SizedBox(
          width: 350,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search our courses",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber,
                ),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.amber,
              ),
              focusColor: Colors.amber,
              fillColor: Colors.amber,
              hoverColor: Colors.amber,
            ),
          ),
        )
      ],
    );
  }
}
