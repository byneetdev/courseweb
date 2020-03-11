import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/login/screens/login_view.dart';
import 'package:adminbyneet/modules/login/widgets/custom_textfield.dart';
import 'package:adminbyneet/modules/login/widgets/login_button.dart';
import 'package:adminbyneet/modules/register/screens/register_view.dart';
import 'package:adminbyneet/modules/register/widgets/register_button.dart';
import 'package:flutter/material.dart';

class RegisterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                // width: double.infinity,
                // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.center,
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
                    title: xNama,
                    hintText: hintNama,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: xEmail,
                    hintText: hintEmail,
                    isPassword: false,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 400,
                    child: CustomTextField(
                      title: xKeahlian,
                      hintText: hintKeahlian,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 400,
                    child: CustomTextField(
                      title: xPassword,
                      hintText: hintPass,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 400,
                    child: CustomTextField(
                      title: xKonfirmasiPass,
                      hintText: xKonfirmasiPass,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(width: 400.0, child: RegisterButton()),
                  SizedBox(height: 20),
                  Container(
                    width: 400.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ));
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: xSudahPunyaAkun,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: xSignIn,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
