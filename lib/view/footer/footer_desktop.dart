import 'package:adminbyneet/widgets/footer_details/footer_items.dart';
import 'package:flutter/material.dart';

class FooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        color: Colors.indigo[900],
      ),
      alignment: Alignment.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "B",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Byneet",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(
                    "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 45.0),
            FooterItem(
              title: "Company",
              item1: "About",
              item2: "Blog",
              item3: "Careers",
            ),
            SizedBox(width: 45.0),
            FooterItem(
              title: "Community",
              item1: "Go Premiums",
              item2: "Team Plans",
              item3: "Careers",
            ),
            SizedBox(width: 45.0),
            FooterItem(
              title: "Teaching",
              item1: "Become a teachers",
              item2: "Teaching academy",
              item3: "Partnerships",
            ),
          ],
        ),
      ),
    );
  }
}
