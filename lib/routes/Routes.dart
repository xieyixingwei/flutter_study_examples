import 'dart:js';

import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/DictionaryApp.dart';
import 'package:helloworld/apps/wechat/WechatApp.dart';

import 'package:helloworld/widgets/Button/page.dart';
import 'package:helloworld/widgets/Card/page.dart';
import 'package:helloworld/widgets/DateTime/page.dart';
import 'package:helloworld/widgets/Dialog/page.dart';
import 'package:helloworld/widgets/Form/page.dart';
import 'package:helloworld/widgets/Http/page.dart';
import 'package:helloworld/widgets/Image/page.dart';
import 'package:helloworld/widgets/Layout/page.dart';
import 'package:helloworld/widgets/ListView/page.dart';
import 'package:helloworld/widgets/Meterial/page.dart';
import 'package:helloworld/widgets/StatefulWidget/page.dart';
import 'package:helloworld/widgets/TabBar/page.dart';
import 'package:helloworld/widgets/Text/page.dart';

import 'package:helloworld/routes/pages/R01_BaseWidget.dart';
import 'package:helloworld/routes/pages/Home.dart';


// 定义命名路由
final _routes = {
  "/": (context) => HomePage(),//MyTabs(),
  "/BaseWidgetPage": (context) => BaseWidgetPage(),

  "/Text": (context) => TextPage(),
  "/Image": (context) => ImagePage(),
  "/ListView": (context) => ListViewPage(),
  "/layout": (context) => LayoutPage(),
  "/Card": (context) => CardPage(),
  "/button": (context) => ButtonPage(),
  "/StatefulWidget": (context) => StatefulWidgetPage(),
  "/dialog": (context) => DialogPage(),
  "/datetime": (context) => DateTimePage(),
  "/form": (context) => FormPage(),
  "/meterial": (context) => MeterialPage(),
  "/tabbar": (context) => TabBarPage(),
  "/httppage": (context) => HttpPage(),

  "/wechat": (context) => WechatApp(),
  "/dictionary": (context) => DictionaryApp(),
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
