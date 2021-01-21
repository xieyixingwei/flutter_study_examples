import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_Card.dart';
import './L02_CircleAvatar.dart';


class CardPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "Card 卡片组件的使用",
      "subtitle":"",
      "widget": CardExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "CircleAvatar 组件的使用",
      "subtitle":"",
      "widget": CircleAvatarExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "Card CircleAvatar 组件", configs:_configs);
  }
}
