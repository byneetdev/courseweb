import 'package:adminbyneet/listItem/model/screenshot.dart';

class Course {
  final String uid; // id Course
  final String title; // judul Course
  final String urlimage; // url gambar Course
  final String classStatus; // status Course premium atau gratis
  final String description; // deskripsi Course
  final String creatorName; // nama creator == yang buat Course == pemateri
  final double rating; // rating Course
  final String date; // tanggal dibuat Course
  final List<Screenshot> screenshots; // list gambar screenshot
  // final List<Theory> theories; // list data teori

  Course({
    this.uid,
    this.title,
    this.urlimage,
    this.classStatus,
    this.description,
    this.creatorName,
    this.rating,
    this.date,
    this.screenshots,
    // this.theories,
  });
}
