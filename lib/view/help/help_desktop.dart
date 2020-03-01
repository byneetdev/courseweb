import 'package:adminbyneet/widgets/create_course_details/create_course_one.dart';
import 'package:adminbyneet/widgets/create_course_details/create_course_three.dart';
import 'package:adminbyneet/widgets/create_course_details/create_course_two.dart';
import 'package:flutter/material.dart';

class HelpDesktop extends StatelessWidget {
  const HelpDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Kursus Baru",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  color: Colors.pink,
                  borderSide: BorderSide(color: Colors.pink, width: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Selesai",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          CreateCourseOne(
            title: "Nama kursus*",
            hintText: "Tulis nama kursus baru",
            helperText: "Contoh: Flutter Cross-Platform for Beginner",
          ),
          SizedBox(height: 30),
          CreateCourseOne(
            title: "Deskripsi*",
            hintText: "Tulis deskripsi kursus baru kamu",
            helperText:
                "Deskripsi ini akan menampilkan pada detail kursus kamu",
          ),
          SizedBox(height: 30),
          CreateCourseThree(
            title: "Status Kursus*",
          ),
          SizedBox(height: 30),
          CreateCourseTwo(
            title: "Foto Kursus*",
            helperText:
                "This works like a user icon and appears in previews of your publication content throughout Medium. It is square and should be at least 60 × 60px in size.",
          ),
          SizedBox(height: 15),
          Divider(),
          SizedBox(height: 15),
          CreateCourseTwo(
            title: "Screenhot*",
            helperText:
                "Screenshot kursus akan mempermudah user menanggapi maksud atau tujuan kursus kamu, gunakan gambar screenshot untuk menarik perhatian konsumen :)",
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
