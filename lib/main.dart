import 'package:adminbyneet/layout_template/layout_template.dart';
import 'package:flutter/material.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin',
      theme: ThemeData(fontFamily: "Nunito"),
      home: LayoutTemplate(),
    );
  }
}
