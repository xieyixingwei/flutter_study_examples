import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_StatefulWidget.dart';


class StatefulWidgetPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "StatefulWidget 实例1",
      "subtitle":"",
      "widget": StatefulWidgetExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "StatefulWidget 实例2",
      "subtitle":"",
      "widget": StatefulWidgetExampleB(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "StatefulWidget 有状态组件使用", configs:_configs);
  }
}
