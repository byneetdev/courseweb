import 'package:adminbyneet/listItem/model/screenshot.dart';
import 'package:adminbyneet/listItem/model/theory.dart';

class Course {
  final String uid; // id Course
  final String title; // judul Course
  final String urlimage; // url gambar Course
  final String status; // status Course premium atau gratis
  final String price;
  final String description; // deskripsi Course
  final String creator; // nama creator == yang buat Course == pemateri
  final double rating; // rating Course
  final String date; // tanggal dibuat Course
  final List<Screenshot> screenshots; // list gambar screenshot
  final List<Theory> theories; // list data teori

  Course({
    this.uid,
    this.title,
    this.urlimage,
    this.status,
    this.price,
    this.description,
    this.creator,
    this.rating,
    this.date,
    this.screenshots,
    this.theories,
  });
}
