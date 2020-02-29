import 'package:flutter/material.dart';

class HomeItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 400,
      margin: EdgeInsets.only(right: 20, bottom: 10, top: 10),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/business.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: <Widget>[
                  Text(
                    "User Experience Design Essentials Adobe XD UI UX Design and Flutter Developent",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildItems("5.0", Icons.star),
                      buildItems("7k", Icons.account_circle),
                      buildItems("120k", Icons.visibility),
                      SizedBox(width: 30),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black12,
                        backgroundImage: AssetImage("assets/images/ve.jpg"),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildItems(String title, IconData icon) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(),
          ),
          child: Icon(
            icon,
            size: 18,
          ),
        ),
        SizedBox(width: 10),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
