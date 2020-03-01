import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/widgets/login_details/login_textfield.dart';
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
                      "Masuk",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60),
                    LoginTextField(
                      title: "Email adress",
                      hintText: "you@example.com",
                      obsecureText: false,
                    ),
                    LoginTextField(
                      title: "Password",
                      hintText: "Enter your password",
                      obsecureText: true,
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Lupa password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.pink),
                      ),
                    ),
                    SizedBox(height: 20),
                    CallToAction(title: "Log In"),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        Text("Belum punya akun ?"),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () => null,
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.pink),
                          ),
                        ),
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
