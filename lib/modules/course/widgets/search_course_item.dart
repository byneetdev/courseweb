import 'package:adminbyneet/modules/navigation_bar/navbar_button.dart';
import 'package:flutter/material.dart';
import 'package:adminbyneet/constants/lang.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SearchCourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizing) {
      double fontSize =
          sizing.deviceScreenType == DeviceScreenType.Mobile ? 30 : 40;
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$xCari ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: xKursus,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: fontSize,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17),
            Center(
              child: Padding(
                padding: sizing.deviceScreenType == DeviceScreenType.Mobile
                    ? const EdgeInsets.symmetric(horizontal: 20)
                    : const EdgeInsets.symmetric(horizontal: 70),
                child: Material(
                  elevation: 2,
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(14.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: searchCourse,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      NavbarButton(
                        title: xCari,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
