import 'package:adminbyneet/view/footer/footer_desktop.dart';
import 'package:adminbyneet/view/footer/footer_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterMobile(),
      desktop: FooterDesktop(),
    );
  }
}
