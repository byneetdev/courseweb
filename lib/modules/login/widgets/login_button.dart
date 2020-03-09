import 'package:adminbyneet/modules/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  final String email;
  final String pass;

  const LoginButton({Key key, this.email, this.pass}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userProv = Provider.of<LoginService>(context);

    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueAccent,
              Colors.blue[200],
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: RaisedButton(
        onPressed: () async {
          bool issukses = await userProv.signIn(email, pass);
          if (issukses) {
            Navigator.of(context).pop();
          } else {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      content: Text('Login Gagal'),
                    ));
          }
        },
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Text(
          xSignIn,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
