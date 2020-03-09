import 'package:adminbyneet/listItem/model/screenshot.dart';
import 'package:adminbyneet/listItem/model/theory.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Course {
  final String uid; // id Course
  final String title; // judul Course
  final String urlimage; // url gambar Course
  final String status; // status Course premium atau gratis
  final int price;
  final String description; // deskripsi Course
  final String creator; // nama creator == yang buat Course == pemateri
  final double rating; // rating Course
  final String date; // tanggal dibuat Course
  final List<Screenshot> screenshots; // list gambar screenshot
  final List<Theory> theories; // list data teori
  final List<String> progress; //list idmateri yg udah
  final int
      totalmateri; //total materi tuk ngitung perenan progress, biar dak perlu get get list materi agik

  Course(
      {this.uid,
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
      this.progress,
      this.totalmateri});

  factory Course.fromFirestore(DocumentSnapshot doc) => Course(
      uid: doc.documentID,
      title: doc.data["name"],
      urlimage: doc.data["urlimage"],
      description: doc.data["description"],
      status: doc.data["status"],
      creator: doc.data["creator"],
      price: doc.data["price"],
      screenshots: (doc.data["screenshot"] as List)
          ?.map((item) => Screenshot(urlimage: item))
          ?.toList(),
      theories: (doc.data["theories"] as List)
          ?.map((e) => Theory.fromMap(e))
          ?.toList(),
      progress:
          (doc.data["progress"] as List)?.map((e) => e.toString())?.toList(),
      totalmateri: doc.data['totalmateri']);

  Map<String, dynamic> toMap() {
    return {
      "name": title,
      "urlimage": urlimage,
      "description": description,
      "screenshot": screenshots,
      "status": status,
      "price": price,
      "creator": creator,
      "theories": theories.map((e) => e.toMap())?.toList(),
      "progress": progress,
      "totalmateri": totalmateri
    };
  }
}
