import 'package:adminbyneet/constants/app_color.dart';
import 'package:adminbyneet/listItem/dummy/dummyReview.dart';
import 'package:adminbyneet/modules/home/widgets/review_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TestimonialHomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textPosition =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? TextAlign.center
              : TextAlign.left;

      return Container(
        width: double.infinity,
        height: 650,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/teacherb.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Center(
                child: RichText(
                    textAlign: textPosition,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Alasan Mengapa Memilih ",
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          )),
                      TextSpan(
                          text: "BYNEETCourse",
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Review ",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          )),
                      TextSpan(
                          text: "Pengguna",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 100,
                    height: 3,
                    child: Divider(
                      color: Color(primaryColor),
                      height: 5,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    child: ListView.builder(
                      itemCount: dummyReview.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var review = dummyReview[index];
                        return ReviewCard(review: review);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
