import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/screens/exam_view.dart';
import 'package:flutter/material.dart';

class CourseClaimCard extends StatelessWidget {
  final Course course;
  CourseClaimCard({this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Material(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                course.urlimage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rp. ${course.price}",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExamView(),
                            ));
                      },
                      color: Color(primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        xBeliNow,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    xMencakup,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  buildItem(Icons.loop, xAksesSeumurHidup),
                  SizedBox(height: 10),
                  buildItem(Icons.smartphone, xMultiPlatform),
                  SizedBox(height: 10),
                  buildItem(Icons.star, xSertifikat),
                  SizedBox(height: 10),
                  buildItem(Icons.code, "122 $xLatihanCoding"),
                  SizedBox(height: 10),
                  buildItem(Icons.book, "111 $xArtikel"),
                  SizedBox(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildItem(IconData icon, String title) {
    return Row(
      children: <Widget>[
        Icon(icon, color: Colors.black54),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
