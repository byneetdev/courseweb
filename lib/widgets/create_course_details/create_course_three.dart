import 'package:flutter/material.dart';

class CreateCourseThree extends StatelessWidget {
  final String title;
  CreateCourseThree({this.title});
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
            new DropdownButton<String>(
              hint: Text("Status Kursus Kamu"),
              items: <String>['Gratis', 'Premium'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ],
        ),
      ],
    );
  }
}
