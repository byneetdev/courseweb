import 'package:adminbyneet/view/help/help_desktop.dart';
import 'package:adminbyneet/view/help/help_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HelpView extends StatelessWidget {
  const HelpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HelpMobile(),
      desktop: HelpDesktop(),
    );
  }
}
