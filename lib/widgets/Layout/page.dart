import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L00_Container.dart';
import './L01_Padding.dart';
import './L02_Column.dart';
import './L03_Row.dart';
import './L04_Expanded.dart';
import './L05_Wrap.dart';
import './L06_Examples.dart';
import './L07_GridView.dart';
import './L08_AspectRatio.dart';
import './L09_Stack.dart';


/// 布局子组件Padding、Expanding、Row、Column、SizedBox、Wrap, Grid的使用
class LayoutPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"lib/widgets/Layout/images/Container.PNG",
      "title":"Container",
      "subtitle":"一个拥有绘制、定位、调整大小的 widget。",
      "widget": ContainerExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Padding 组件的使用",
      "subtitle":"",
      "widget": PaddingExampleA(),
    },
    {
      "image":"lib/widgets/Layout/images/Row.PNG",
      "title": "Row 组件的使用",
      "subtitle":"",
      "widget": RowExampleA(),
    },
    {
      "image":"lib/widgets/Layout/images/Column.PNG",
      "title": "Column 组件的使用",
      "subtitle":"",
      "widget": ColumnExampleA(),
    },
    {
      "image": ColumnExampleB.image ?? "lib/widgets/Layout/images/Column.PNG",
      "title": ColumnExampleB.title,
      "subtitle":ColumnExampleB.subtitle,
      "widget": ColumnExampleB(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Expanded 组件的使用",
      "subtitle":"",
      "widget": ExpandedExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Wrap 组件的使用",
      "subtitle":"",
      "widget": WrapExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "综合使用 Row Column Expanded SizedBox",
      "subtitle":"",
      "widget": LayoutExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "网格布局组件 GridView的基本使用",
      "subtitle":"",
      "widget": GridExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "GridView 动态获取组件布局",
      "subtitle":"",
      "widget": GridExampleB(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "GridView.builder的使用",
      "subtitle":"",
      "widget": GridExampleC(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "AspectRatio 的使用",
      "subtitle":"",
      "widget": AspectRatioExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "层叠容器组件 Stack的使用",
      "subtitle":"",
      "widget": StackExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "使用Align组件控制Stack中的子组件的位置",
      "subtitle":"",
      "widget": StackExampleB(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "使用Positioned组件控制Stack中的子组件的位置",
      "subtitle":"",
      "widget": StackExampleB(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "布局组件的使用", configs:_configs);
  }
}
