import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 500,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 36),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Log In",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60),
                    Text("Email adress"),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "you@example.com",
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(height: 20),
                    Text("Password"),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Lupa password?"),
                    ),
                    SizedBox(height: 20),
                    CallToAction(title: "Log In"),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        Text("Belum punya akun ?"),
                        SizedBox(width: 10),
                        Text("Daftar"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
