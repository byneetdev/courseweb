import 'package:adminbyneet/modules/home/widgets/swiperItemOne.dart';
import 'package:adminbyneet/modules/home/widgets/swiperItemTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CustomCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 568,
      child: Swiper.children(
        pagination: SwiperControl(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          iconNext: Icons.arrow_forward_ios,
          iconPrevious: Icons.arrow_back_ios,
          size: 45,
        ),
        children: <Widget>[
          SwiperItemOne(),
          SwiperItemTwo(),
        ],
      ),
    );
  }
}
