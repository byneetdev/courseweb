import 'package:adminbyneet/routing/route_names.dart';
import 'package:adminbyneet/view/about/about_view.dart';
import 'package:adminbyneet/view/course/course_view.dart';
import 'package:adminbyneet/view/help/help_view.dart';
import 'package:adminbyneet/view/home/home_view.dart';
import 'package:adminbyneet/view/landing/landing_view.dart';
import 'package:adminbyneet/view/login/login_view.dart';
import 'package:adminbyneet/view/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingRoute:
      return _getPageRoute(LandingView());
    case HomeRoute:
      return _getPageRoute(HomeView());
    case CourseRoute:
      return _getPageRoute(CourseView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case HelpRoute:
      return _getPageRoute(HelpView());
    case LoginRoute:
      return _getPageRoute(LoginView());
    case RegisterRoute:
      return _getPageRoute(RegisterView());

    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
