import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_button_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_five_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_four_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_one_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_six_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_three_web.dart';
import 'package:adminbyneet/modules/landing/widgets/landing_two_web.dart';
import 'package:flutter/material.dart';

class LandingWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // item pertama pada landing page
            // terdapat kata pembuka + tombol get started!
            LandingOneWeb(),
            SizedBox(height: 60),
            // fitur fitur utama yang paten
            LandingTwoWeb(),
            SizedBox(height: 60),
            // kata pembuka kategori
            LandingThreeWeb(),
            SizedBox(height: 60),
            // gridview kategori
            LandingFourWeb(),
            SizedBox(height: 35),
            // button untuk browse semua kategori
            Center(child: LandingButton(title: feature7)),
            SizedBox(height: 60),
            // widget keterangan + tombol kursus
            LandingFiveWeb(),
            SizedBox(height: 60),
            // container slider horizontal
            // list kursus populer
            Container(
              width: double.infinity,
              height: 400,
              margin: EdgeInsets.only(left: 70.0),
              //list view builder widget dari kursus
              child: LandingSixWeb(),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
