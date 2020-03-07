import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/login/widgets/custom_textfield.dart';
import 'package:adminbyneet/modules/register/widgets/register_button.dart';
import 'package:flutter/material.dart';

class RegisterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        child: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    xSignUp,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),
                  CustomTextField(
                    title: xEmail,
                    hintText: hintEmail,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: xNama,
                    hintText: hintNama,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: xKeahlian,
                    hintText: hintKeahlian,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: hintPass,
                    hintText: hintPass,
                    isPassword: true,
                  ),
                  SizedBox(height: 30),
                  RegisterButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
