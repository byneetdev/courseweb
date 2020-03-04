import 'package:adminbyneet/constants/lang.dart';
import 'package:adminbyneet/modules/home/widgets/customSwiper.dart';
import 'package:adminbyneet/modules/home/widgets/swiperItemOne.dart';
import 'package:adminbyneet/modules/home/widgets/swiperItemTwo.dart';
import 'package:adminbyneet/modules/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NavigationBar(),
              CustomCarousel(),
              SizedBox(height: 400),
            ],
          ),
        ),
      ),
    );
  }
}
