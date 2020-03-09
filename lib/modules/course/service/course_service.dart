import 'package:adminbyneet/listItem/model/course.dart';
import 'package:adminbyneet/utils/api.dart';
import 'package:flutter/material.dart';

class CourseService with ChangeNotifier {
  final _api = Api('courses');
  //langsung masukkan path collection nye. jadi ini ngambik collection('courses')

  //tempat simpan data
  List<Course> listAccount;
  Course accountDetail;

  Future addDocument(Map data) async {
    await _api.addDocument(data);
    return;
  }

  Future<List<Course>> getDataCollection() async {
    var res = await _api.getDataCollection();
    listAccount =
        res.documents.map((doc) => Course.fromFirestore(doc)).toList();
    return listAccount;
  }

  Future<Course> getDocumentById(String id) async {
    var doc = await _api.getDocumentById(id);
    accountDetail = Course.fromFirestore(doc);
    return accountDetail;
  }

  Future removeDocument(String id) async {
    await _api.removeDocument(id);
    return;
  }

  Future updateDocument(String id, Map data) async {
    await _api.updateDocument(id, data);
    return;
  }
}
