import 'dart:js';

import 'package:flutter/material.dart';
import 'package:helloworld/components/MyAspectRatio.dart';
import 'package:helloworld/components/MyCard.dart';
import 'package:helloworld/components/MyContainer.dart';
import 'package:helloworld/components/MyGridView.dart';
import 'package:helloworld/components/MyImage.dart';
import 'package:helloworld/components/MyLayoutComponent.dart';
import 'package:helloworld/components/MyListView.dart';
import 'package:helloworld/components/MyStack.dart';
import 'package:helloworld/components/MyStatefulWidget.dart';
import 'package:helloworld/components/MyText.dart';

import 'package:helloworld/tabs/MyTabs.dart';
import 'package:helloworld/routes/pages/ChildPage.dart';
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
  "/childc": (context) => ChildPageC(),
  "/Text": (context) => TextPage(),
  "/Container": (context) => ContainerPage(),
  "/Image": (context) => ImagePage(),
  "/ListView": (context) => ListViewPage(),
  "/GridView": (context) => GridViewPage(),
  "/layout": (context) => LayoutPage(),
  "/Stack": (context) => StackPage(),
  "/AspectRatio": (context) => AspectRatioPage(),
  "/Card": (context) => CardPage(),
  "/StatefulWidget": (context) => StatefulWidgetPage(),
  "/buttonpage": (context) => ButtonPage(),

  "/login": (context) => LoginPage(),
  "/register": (context, {arguments}) => RegisterPage(arguments: arguments),
  "/appbarpage": (context) => AppBarPage(),
  "/tabbarpage": (context) => TabBarPage(),
  "/user": (context) => UserPage(),

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
