import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_TabBar.dart';


class TabBarPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "TabBar 实例",
      "subtitle":"",
      "widget": TabBarExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "TabBar TabController TabBarView 组件使用", configs:_configs);
  }
}
