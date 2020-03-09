import 'package:adminbyneet/modules/home/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/login/service/login_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginService.instance()),
      ],
      child: MaterialApp(
        title: 'Admin',
        theme: ThemeData(fontFamily: "Nunito"),
        home: HomeView(),
      ),
    );
  }
}
