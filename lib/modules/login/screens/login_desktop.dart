import 'package:adminbyneet/modules/login/service/login_service.dart';
import 'package:adminbyneet/modules/login/widgets/custom_textfield.dart';
import 'package:adminbyneet/modules/login/widgets/login_button.dart';
import 'package:adminbyneet/modules/register/screens/register_view.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:provider/provider.dart';

class LoginDesktop extends StatefulWidget {
  @override
  _LoginDesktopState createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  TextEditingController temail;
  TextEditingController tpass;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    temail = TextEditingController();
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
                    xSignIn,
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
                    controller: tpass,
                    title: hintPass,
                    hintText: hintPass,
                    isPassword: true,
                  ),
                  SizedBox(height: 30),
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
                  LoginButton(email: temail.text, pass: tpass.text),
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
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
