import 'package:adminbyneet/widgets/call_to_action/call_to_action.dart';
import 'package:adminbyneet/widgets/register_details/register_textfield.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
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
                      "Daftar baru",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60),
                    RegisterTextField(
                      title: "Email address",
                      hintText: "you@example.com",
                      obsecureText: false,
                    ),
                    RegisterTextField(
                      title: "Nama lengkap",
                      hintText: "Nama lengkap kamu",
                      obsecureText: false,
                    ),
                    RegisterTextField(
                      title: "Keahlian",
                      hintText: "cth: Mobile Developer",
                      obsecureText: false,
                    ),
                    RegisterTextField(
                      title: "Password",
                      hintText: "Masukkan password kamu",
                      obsecureText: true,
                    ),
                    RegisterTextField(
                      title: "Konfirmasi password",
                      hintText: "Konfirmasi password",
                      obsecureText: true,
                    ),
                    SizedBox(height: 40),
                    Center(child: CallToAction(title: "Daftar Sekarang")),
                    SizedBox(height: 40),
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
