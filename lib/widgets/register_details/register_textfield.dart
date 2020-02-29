import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  RegisterTextField({this.title, this.hintText, this.obsecureText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        TextFormField(
          obscureText: obsecureText,
          decoration: InputDecoration(
              hintText: hintText,
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(14))),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
