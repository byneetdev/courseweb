import 'package:adminbyneet/modules/home/screens/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin',
      theme: ThemeData(fontFamily: "Nunito"),
      home: HomeView(),
    );
  }
}
