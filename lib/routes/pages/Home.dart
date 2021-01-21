import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowItemComponent.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _configs = [
    {
      "title":"基础组件的使用",
      "subtitle":"在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。",
      "route":"/BaseWidgetPage",
    },
    {
      "title":"Material 组件的使用",
      "subtitle":"实现了Material Design 指南的视觉、效果、motion-rich的widget。",
      "route":"/meterial",
    },
    {
      "title":"布局组件的使用",
      "subtitle":"排列其它widget的columns、rows、grids和其它的layouts。",
      "route":"/layout",
    },
    {
      "title":"路由的使用",
      "subtitle":"响应触摸事件并将用户路由到不同的页面视图（View）。",
      "route":"/RoutePage",
    },
    {
      "title":"Input 组件的使用",
      "subtitle":"input 组件演示。",
      "route":"/form",
    },
    {
      "title":"http 实现网络请求演示",
      "subtitle":"http 组件演示",
      "route":"/httppage",
    },
    {
      "title":"动画和Motion",
      "subtitle":"在您的应用中使用动画。查看Flutter中的动画总览",
      "route":"/InputPage",
    },
    {
      "title":"微信APP",
      "subtitle":"模拟微信APP",
      "route":"/wechat",
    },
    {
      "title":"英语词典APP",
      "subtitle":"查词、学习",
      "route":"/dictionary",
    },
  ];

  @override
    Widget build(BuildContext context) {
      return ShowItemComponent(title:"Fluter 实例教程", configs:_configs);
    }
}
