import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_RaisedButton.dart';
import './L02_FlatButton.dart';
import './L03_OutlineButton.dart';
import './L04_IconButton.dart';
import './L05_ButtonBar.dart';
import './L06_FloatingActionButton.dart';

/// Flutter右以下几种按钮组件
/// RaisedButton 凸起的按钮，是Material Design风格的Button
/// FlatButton 扁平化的按钮
/// OutlineButton 线框按钮
/// IconButton 图标按钮
/// ButtonBar 按钮组
/// FloatingActionButton 浮动按钮

class ButtonPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "RaisedButton 的使用",
      "subtitle":"",
      "widget": RaisedButtonPage(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "FlatButton 的使用",
      "subtitle":"",
      "widget": FlatButtonExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "OutlineButton 的使用",
      "subtitle":"",
      "widget": OutlineButtonExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "IconButton 的使用",
      "subtitle":"",
      "widget": IconButtonExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "ButtonBar 的使用",
      "subtitle":"",
      "widget": ButtonBarExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "FloatingActionButton 的使用",
      "subtitle":"",
      "widget": FloatingActionButtonExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "Button 组件", configs:_configs);
  }
}
