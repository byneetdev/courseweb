import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/modules/login/screens/login_view.dart';
import 'package:adminbyneet/modules/login/widgets/custom_textfield.dart';
import 'package:adminbyneet/modules/login/widgets/login_button.dart';
import 'package:adminbyneet/modules/register/screens/register_view.dart';
import 'package:adminbyneet/modules/register/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';

class RegisterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 110, vertical: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  child: Container(
                    width: double.infinity,
                    height: 650,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                xSignUp,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 50),
                              Container(
                                // width: 600,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 190,
                                      child: CustomTextField(
                                        title: xNama,
                                        hintText: hintNama,
                                        isPassword: false,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      width: 190,
                                      child: CustomTextField(
                                        title: xEmail,
                                        hintText: hintEmail,
                                        isPassword: false,
                                      ),
                                    ),
                                  ],
                                ),
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
                          ),
                          SizedBox(width: 35),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Material(
                                borderRadius: BorderRadius.circular(17),
                                child: Image.asset(
                                  "assets/images/login.png",
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
