import 'package:adminbyneet/widgets/course_details/course_detail.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CourseDetails(),
                Expanded(
                  child: Center(child: Image.asset("assets/images/dr3.png")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
