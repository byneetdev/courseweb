import 'package:flutter/material.dart';

class CreateCourseOne extends StatelessWidget {
  final String title;
  final String hintText;
  final String helperText;
  CreateCourseOne({this.title, this.helperText, this.hintText});
  @override
  Widget build(BuildContext context) {
    return Table(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // border: TableBorder.all(),
      columnWidths: {1: FractionColumnWidth(.8)},
      children: [
        TableRow(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                helperText: helperText,
              ),
            )
          ],
        ),
      ],
    );
  }
}
