import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_Text.dart';


class TextPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"lib/widgets/Text/images/Text.PNG",
      "title": "Text 组件的使用",
      "subtitle":"",
      "widget": TextExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "Text组件的使用", configs:_configs);
  }
}
