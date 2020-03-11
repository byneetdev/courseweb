import 'package:flutter/material.dart';

class ExamMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 45.0),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Text(
              "Sekali lagi kami ucapkan selamat! Apa yang sudah Anda pelajari di kelas ini adalah tentang bagaimana mengelola source code dengan menggunakan Git dan Git GUI. Sebenarnya masih banyak komponen dan perintah lainnya yang belum tercover dalam academy ini. Wajar saja, academy ini ditujukan untuk pemula. Akan tetapi, dengan Anda menyelesaikan academy ini, setidaknya kini Anda sudah mampu untuk mengembangkan project sendirian,  atau bahkan bersama sedikit rekan. Project Anda pun bisa terkelola dengan baik dan terstruktur, karena segala aktivitas yang terjadi pada source code sudah terekam.Anda bisa mulai mencoba-coba menggunakan Git GUI lainnya. Atau jika Anda tertantang, bisa menggunakan Git Command Line Interface. Selain itu, bisa juga juga menggunakan code versioning tool yang lain seperti SVN, Mercurial, dan lain lain. Ceritakan pengalaman Anda menggunakan tools lainnya di diskusi, kami akan senang mendengar cerita Anda.Tetap semangat membangun karya!",
              style: TextStyle(
                fontSize: 18,
                height: 2.0,
              ),
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Text("Flutter WEB"),
            ),
            ListTile(
              title: Text("Intro"),
              trailing: Icon(Icons.done, color: Colors.greenAccent),
            ),
            ListTile(
              title: Text("Hello world"),
              trailing: Icon(Icons.done, color: Colors.greenAccent),
            ),
            ListTile(
              title: Text("Lakad matatang"),
              trailing: Icon(Icons.play_arrow, color: Colors.greenAccent),
            ),
            ListTile(
              title: Text("Intro"),
              trailing: Icon(Icons.play_arrow, color: Colors.greenAccent),
            ),
          ],
        ),
      ),
    );
  }
}
