import 'package:flutter/material.dart';

class CreateCourseTwo extends StatelessWidget {
  final String title;
  final String helperText;
  CreateCourseTwo({
    this.title,
    this.helperText,
  });

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Tambahkan gambar...",
                      style: TextStyle(fontSize: 25),
                    ),
                    Container(
                      width: 500,
                      child: Text(
                        helperText,
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Container(
                  width: 120.0,
                  height: 120.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black26, width: 2)),
                  child: Icon(
                    Icons.camera_alt,
                    size: 45,
                    color: Colors.black26,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
