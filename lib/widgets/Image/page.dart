import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_Image.dart';
import './L02_ClipOval.dart';


class ImagePage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "Image 显示网络图片",
      "subtitle":"",
      "widget": NetworkImageExample(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Image 显示本地图片",
      "subtitle":"",
      "widget": LocalImageExample(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "ClipOval 显示圆角图片",
      "subtitle":"",
      "widget": ClipOvalExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "显示圆角图片方式2",
      "subtitle":"",
      "widget": ImageRadiusExample(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "Image ClipOval 组件", configs:_configs);
  }
}
