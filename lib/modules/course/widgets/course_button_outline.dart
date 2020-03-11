import 'package:adminbyneet/constants/app_color.dart';
import 'package:flutter/material.dart';

class CourseButtonOutline extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData icon;
  CourseButtonOutline({this.title, this.onTap, this.icon});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(primaryColor)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(primaryColor),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(width: 10),
            Icon(icon, color: Color(primaryColor))
          ],
        ),
      ),
    );
  }
}
