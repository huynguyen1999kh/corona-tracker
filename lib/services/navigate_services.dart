import 'package:corona_tracker/providers/home/home_controller.dart';
import 'package:corona_tracker/providers/login/login_controller.dart';
import 'package:corona_tracker/ui/pages/home_page.dart';
import 'package:corona_tracker/ui/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// this key use as navigator
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// list route
class Views {
  static const String loginPage = 'loginPage';
  static const String homePage = 'homePage';
}

//
// example usage: navigatorKey.currentState.pushNamed(Views.profileScreen);
//
Route<dynamic> generateRoute(RouteSettings settings) {
  // final Map args = settings.arguments; // in case passing argruments
  switch (settings.name) {
    case Views.loginPage:
      return CupertinoPageRoute(
          builder: (context) => ChangeNotifierProvider(
              create: (_) => LoginController(), child: LoginPage()));
    case Views.homePage:
      return CupertinoPageRoute(
          builder: (context) => ChangeNotifierProvider(
              create: (_) => HomeController(), child: HomePage()));
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('Đường dẫn đến ${settings.name} không tồn tại'),
          ),
        ),
      );
  }
}
