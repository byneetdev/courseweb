import 'package:adminbyneet/listItem/dummy/dummyCourse.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CourseGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70.0),
      child: ResponsiveGridList(
        scroll: false,
        desiredItemWidth: 250,
        minSpacing: 10,
        children: dummyCourse.map((e) {
          return Container(
            width: 500,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0)),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    e.urlimage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          e.title,
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          e.creatorName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: <Widget>[
                            Text(
                              e.rating.toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.amber,
                              ),
                            ),
                            Icon(Icons.star, color: Colors.amber)
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Rp. 700.000",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Chip(
                          label: Text(
                            e.classStatus,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
