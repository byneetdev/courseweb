import 'package:adminbyneet/modules/home/widgets/customSwiper.dart';
import 'package:adminbyneet/modules/home/widgets/search_home_item.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
        title: Text("Byneet Course"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomCarousel(),
              SizedBox(height: 70),
              SearchHomeItem(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
