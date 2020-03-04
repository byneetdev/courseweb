import 'package:adminbyneet/constants/lang.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SearchHomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double containerWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 400
              : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
                  ? 350
                  : 600;
      return Center(
        child: Container(
          width: 1200,
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blueAccent,
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blueAccent,
                  ),
                  SizedBox(width: 16),
                  Text(
                    kSkillBaru,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(width: 16),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blueAccent,
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blueAccent,
                  ),
                ],
              ),
              SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$xCari ",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: xKursus,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1000),
                child: sizingInformation.deviceScreenType ==
                        DeviceScreenType.Mobile
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: containerWidth,
                            height: 50,
                            padding: EdgeInsets.only(
                              left: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.black12,
                            ),
                            alignment: Alignment.center,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 17,
                                height: 2.0,
                              ),
                              decoration: InputDecoration(
                                hintText: xHintCari,
                                hintStyle: TextStyle(
                                  fontSize: 17,
                                  height: 2.0,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                    Colors.blue[200],
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                )),
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Text(
                                kCariKursus,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: containerWidth,
                            height: 50,
                            padding: EdgeInsets.only(
                              left: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.black12,
                            ),
                            alignment: Alignment.center,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 17,
                                height: 2.0,
                              ),
                              decoration: InputDecoration(
                                hintText: xHintCari,
                                hintStyle: TextStyle(
                                  fontSize: 17,
                                  height: 2.0,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                    Colors.blue[200],
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                )),
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Text(
                                kCariKursus,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
