import 'package:flutter/material.dart';

class ExamNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60.0),
      child: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  "$index Intro",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.done,
                  color: Colors.green,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
