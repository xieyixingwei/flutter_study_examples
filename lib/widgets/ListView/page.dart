import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_ListView.dart';


class ListViewPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "ListView 基本使用",
      "subtitle":"",
      "widget": ListViewExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "ListView 水平列表",
      "subtitle":"",
      "widget": ListViewExampleB(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "动态列表实现方式1",
      "subtitle":"",
      "widget": ListViewExampleC(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "动态列表实现方式2",
      "subtitle":"",
      "widget": ListViewExampleD(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "Card CircleAvatar 组件", configs:_configs);
  }
}
