import 'package:adminbyneet/widgets/call_to_action/call_to_action_desktop.dart';
import 'package:adminbyneet/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      desktop: CallToActionDesktop(title: title),
    );
  }
}
