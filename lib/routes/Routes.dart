import 'package:flutter/material.dart';

import 'package:helloworld/tabs/MyTabs.dart';
import 'package:helloworld/routes/pages/LoginPage.dart';
import 'package:helloworld/routes/pages/RegisterPage.dart';
import 'package:helloworld/routes/pages/AppBarPage.dart';
import 'package:helloworld/routes/pages/TabControllerPage.dart';
import 'package:helloworld/routes/pages/UserPage.dart';
import 'package:helloworld/routes/pages/ButtonPage.dart';
import 'package:helloworld/routes/pages/DateTimePage.dart';
import 'package:helloworld/routes/pages/DialogPage.dart';
import 'package:helloworld/routes/pages/DioPage.dart';

// 定义命名路由
final _routes = {
  "/": (context) => MyTabs(),
  "/login": (context) => LoginPage(),
  "/register": (context, {arguments}) => RegisterPage(arguments: arguments),
  "/appbarpage": (context) => AppBarPage(),
  "/tabbarpage": (context) => TabBarPage(),
  "/user": (context) => UserPage(),
  "/buttonpage": (context) => ButtonPage(),
  "/datetimepage": (context) => DateTimePage(),
  "/dialogpage": (context) => DialogPage(),
  "/diopage": (context) => DioPage(),
};

// 实现命名路由传参的函数
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = _routes[name];
  if(pageContentBuilder != null) {
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) {
          return pageContentBuilder(context, arguments: settings.arguments);
        },
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
  return null;
};
