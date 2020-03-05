import 'package:adminbyneet/listItem/model/review.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final Review review;
  ReviewCard({this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 280,
      margin: EdgeInsets.only(right: 10),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
                leading: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage(review.urlimage),
                ),
                title: Text(
                  review.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(review.role,
                    style: TextStyle(fontSize: 16, color: Colors.black54))),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                review.reviewText,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
