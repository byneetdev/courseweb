import 'package:adminbyneet/modules/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:provider/provider.dart';

class RegisterButton extends StatelessWidget {
  final String nama;
  final String email;
  final String keahlian;
  final String pass;

  const RegisterButton(
      {Key key, this.nama, this.email, this.keahlian, this.pass})
      : super(key: key);
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
          bool issukses = await userProv.register(email, pass, nama, keahlian);
          if (issukses) {
            //mun sukses register langusng pop ke route awal (screen home)
            Navigator.of(context).popUntil((route) => route.isFirst);
          } else {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      content: Text('Daftar Gagal,email anda sudah terdaftar!'),
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
          xSignUp,
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
