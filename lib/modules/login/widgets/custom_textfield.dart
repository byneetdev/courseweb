import 'package:adminbyneet/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isPassword;
  CustomTextField({this.title, this.hintText, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black54,
            // height: 0.3,
          ),
        ),
        TextField(
          obscureText: isPassword,
          cursorColor: Color(primaryColor),
          decoration: InputDecoration(
            hintText: hintText,
          ),
        )
      ],
    );
  }
}
