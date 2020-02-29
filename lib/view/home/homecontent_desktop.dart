import 'package:adminbyneet/widgets/home_details/home_details_one.dart';
import 'package:adminbyneet/widgets/home_details/home_details_two.dart';
import 'package:adminbyneet/widgets/home_details/home_item_card.dart';
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
            Container(
              width: double.infinity,
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  HomeItemCard(),
                  HomeItemCard(),
                  HomeItemCard(),
                  HomeItemCard(),
                  HomeItemCard(),
                  HomeItemCard(),
                ],
              ),
            ),
            SizedBox(height: 200)
          ],
        ),
      ),
    );
  }
}
