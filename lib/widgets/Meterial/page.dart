import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_AppBar.dart';


class MeterialPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "AppBar 实例1",
      "subtitle":"",
      "widget": AppBarExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "StatefulWidget 有状态组件使用", configs:_configs);
  }
}
