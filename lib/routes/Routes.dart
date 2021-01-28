import 'package:flutter/material.dart';

// 定义命名路由
final _routes = {
  /*
  "/childc": (context) => ChildPageC(),
  "/login": (context) => LoginPage(),
  "/register": (context, {arguments}) => RegisterPage(arguments: arguments),
  "/user": (context) => UserPage(),*/
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
