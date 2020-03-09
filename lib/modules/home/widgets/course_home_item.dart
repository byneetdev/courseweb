import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/modules/course/service/course_service.dart';
import 'package:adminbyneet/modules/home/widgets/course_card_home.dart';
import 'package:adminbyneet/modules/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseHomeItem extends StatelessWidget {
  final courseServ = CourseService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
        future: courseServ.getDataCollection(),
        builder: (context, snapshot) {
          return ResponsiveBuilder(builder: (context, size) {
            double heightContainer =
                size.deviceScreenType == DeviceScreenType.Mobile ? 300 : 430;
            return Container(
              width: double.infinity,
              height: heightContainer,
              margin: EdgeInsets.only(left: 70),
              child: Builder(builder: (_) {
                if (snapshot.connectionState == ConnectionState.done) {
                  print(snapshot.data);
                  if ((snapshot.data?.length ?? 0) < 1) {
                    print("print oii ${(snapshot.data?.length ?? 0) < 1}");
                    return Center(
                      child: Text("data tidak ada, atau ada yang error"),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var course = snapshot.data[index];
                        return CourseCardHome(course: course);
                      },
                    );
                  }
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
            );
          });
        });
  }
}
