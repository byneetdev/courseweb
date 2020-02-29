import 'package:flutter/material.dart';

class HomeItemOne extends StatelessWidget {
  final String title;
  final IconData icon;
  HomeItemOne({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.indigo, width: 2),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.black12,
                  offset: Offset(1.5, 1.0),
                  spreadRadius: 2,
                )
              ]),
          child: Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.indigo,
              // border: Border.all(),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 20),
        Text(title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
