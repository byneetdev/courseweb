import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/modules/login/widgets/custom_textfield.dart';
import 'package:adminbyneet/modules/login/widgets/login_button.dart';
import 'package:adminbyneet/modules/register/screens/register_view.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';

class LoginDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        child: Center(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: Container(
              width: double.infinity,
              height: 650,
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              xSignIn,
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
                              title: hintPass,
                              hintText: hintPass,
                              isPassword: true,
                            ),
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.topRight,
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    xLupaPass,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.indigoAccent,
                                    ),
                                  )),
                            ),
                            SizedBox(height: 20),
                            LoginButton(),
                            SizedBox(height: 20),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterView(),
                                    ));
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: xBelumPunyaAkun,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: xDaftar,
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
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
      ),
    );
  }
}
