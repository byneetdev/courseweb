import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/login/widgets/custom_textfield.dart';
import 'package:adminbyneet/modules/register/widgets/register_button.dart';
import 'package:flutter/material.dart';

class RegisterDesktop extends StatefulWidget {
  @override
  _RegisterDesktopState createState() => _RegisterDesktopState();
}

class _RegisterDesktopState extends State<RegisterDesktop> {
  TextEditingController tnama;

  TextEditingController temail;

  TextEditingController tkeahlian;

  TextEditingController tpass;

  @override
  void initState() {
    super.initState();
    tnama = TextEditingController();
    temail = TextEditingController();
    tkeahlian = TextEditingController();
    tpass = TextEditingController();
  }

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
                    controller: temail,
                    title: xEmail,
                    hintText: hintEmail,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    controller: tnama,
                    title: xNama,
                    hintText: hintNama,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    controller: tkeahlian,
                    title: xKeahlian,
                    hintText: hintKeahlian,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    controller: tpass,
                    title: hintPass,
                    hintText: hintPass,
                    isPassword: true,
                  ),
                  SizedBox(height: 30),
                  RegisterButton(
                      email: temail.text,
                      nama: tnama.text,
                      keahlian: tkeahlian.text,
                      pass: tpass.text),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
