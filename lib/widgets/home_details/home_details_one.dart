import 'package:flutter/material.dart';

class HomeDetailOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Color(0xFFF1F0F0),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(25),
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage("assets/images/girl1.jpg"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black12,
                    offset: Offset(1.5, 1.0),
                    spreadRadius: 4,
                  )
                ]),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Learn on\nyour schedule",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Anywhere, anytime. Enjoy your learning time!",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      margin: EdgeInsets.only(right: 150),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Cari kursus...",
                              border: InputBorder.none,
                              suffixIcon: Container(
                                width: 50,
                                color: Colors.pink,
                                child: Center(
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
