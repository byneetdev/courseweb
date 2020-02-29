import 'package:adminbyneet/view/footer/footer_desktop.dart';
import 'package:adminbyneet/widgets/home_details/home_detail_four.dart';
import 'package:adminbyneet/widgets/home_details/home_detail_six.dart';
import 'package:adminbyneet/widgets/home_details/home_details_five.dart';
import 'package:adminbyneet/widgets/home_details/home_details_one.dart';
import 'package:adminbyneet/widgets/home_details/home_details_three.dart';
import 'package:adminbyneet/widgets/home_details/home_details_two.dart';
import 'package:adminbyneet/widgets/home_details/home_title_details.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeDetailOne(),
            SizedBox(height: 60),
            HomeDetailTwo(),
            SizedBox(height: 100),
            HomeTitleDetail(
              title: "Pilih kursus terbaikmu",
              buttonText: "Lihat Kursus",
            ),
            SizedBox(height: 30),
            HomeDetailThree(),
            SizedBox(height: 100),
            HomeTitleDetail(
              title: "Pilihan terpopuler",
              buttonText: "Lihat Semua Kursus Populer",
            ),
            SizedBox(height: 30),
            HomeDetailThree(),
            SizedBox(height: 30),
            HomeDetailFour(),
            SizedBox(height: 45),
            HomeDetailFive(),
            SizedBox(height: 45),
            HomeDetailSix(),
            SizedBox(height: 30),
            FooterDesktop(),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
