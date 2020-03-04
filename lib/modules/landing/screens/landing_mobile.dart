import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_button_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_five_mobile.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_four_mobile.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_one_mobile.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_six_mobile.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_three_mobile.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_two_mobile.dart';
import 'package:flutter/material.dart';

class LandingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // item pertama pada landing page
            // terdapat kata pembuka + tombol get started!
            LandingOneMobile(
              title: landing1,
              description: description1,
            ),
            SizedBox(height: 20),
            // fitur fitur utama yang paten
            LandingTwoMobile(),
            SizedBox(height: 30),
            // kata pembuka kategori
            LandingThreeMobile(),
            SizedBox(height: 30),
            // gridview kategori
            LandingFourMobile(),
            SizedBox(height: 20),
            // tombol browse kategori
            Center(child: LandingButton(title: feature7)),
            SizedBox(height: 30),
            // Keterangan dari kursus
            LandingFiveMobile(),
            SizedBox(height: 20),
            //tombol browse kursus
            Center(child: LandingButton(title: feature10)),

            SizedBox(height: 20),
            //container listview horizontal kursus
            Container(
              width: double.infinity,
              height: 250,
              margin: EdgeInsets.only(left: 40),
              //listview builder kursus
              child: LandingSixMobile(),
            ),
            SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}
