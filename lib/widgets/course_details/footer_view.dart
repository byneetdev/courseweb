import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
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
            SizedBox(width: 20),
            company(),
            community(),
            teaching(),
          ],
        ),
      ),
    );
  }

  Widget company() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Company",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "About",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Careers",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Blog",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
        ],
      ),
    );
  }

  Widget community() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Community",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Go Premiums",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Team Plans",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Schoolarships",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
        ],
      ),
    );
  }

  Widget teaching() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Teaching",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Become a teachers",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Teaching academy",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Partnerships",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.w,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
        ],
      ),
    );
  }
}
