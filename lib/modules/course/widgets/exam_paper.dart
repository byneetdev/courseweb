import 'package:flutter/material.dart';

class ExamPaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          child: Column(
            children: <Widget>[
              Text(
                "Sekali lagi kami ucapkan selamat! Apa yang sudah Anda pelajari di kelas ini adalah tentang bagaimana mengelola source code dengan menggunakan Git dan Git GUI. Sebenarnya masih banyak komponen dan perintah lainnya yang belum tercover dalam academy ini. Wajar saja, academy ini ditujukan untuk pemula. Akan tetapi, dengan Anda menyelesaikan academy ini, setidaknya kini Anda sudah mampu untuk mengembangkan project sendirian,  atau bahkan bersama sedikit rekan. Project Anda pun bisa terkelola dengan baik dan terstruktur, karena segala aktivitas yang terjadi pada source code sudah terekam.Anda bisa mulai mencoba-coba menggunakan Git GUI lainnya. Atau jika Anda tertantang, bisa menggunakan Git Command Line Interface. Selain itu, bisa juga juga menggunakan code versioning tool yang lain seperti SVN, Mercurial, dan lain lain. Ceritakan pengalaman Anda menggunakan tools lainnya di diskusi, kami akan senang mendengar cerita Anda.Tetap semangat membangun karya!",
                style: TextStyle(
                  fontSize: 18,
                  height: 2.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
