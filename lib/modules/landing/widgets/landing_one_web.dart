import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';

class LandingOneWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 30.0),
      color: Color(0xFF1F4992),
      child: Row(
        children: <Widget>[
          Container(
            width: 500.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  landing1,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  description1,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 21,
                    height: 1.7,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.orange[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      child: Text(
                        getStarted,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Center(child: Image.asset("assets/images/dr3.png")),
          )
        ],
      ),
    );
  }
}
