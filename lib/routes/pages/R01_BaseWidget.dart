import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowItemComponent.dart';


class BaseWidgetPage extends StatefulWidget {
  BaseWidgetPage({Key key}) : super(key: key);

  @override
  _BaseWidgetPage createState() => _BaseWidgetPage();
}

class _BaseWidgetPage extends State<BaseWidgetPage> {
  final List _configs = [
    {
      "image":"lib/widgets/Text/images/Text.PNG",
      "title":"Text 组件",
      "subtitle":"文本显示和样式。",
      "route":"/Text",
    },
    {
      "image":"lib/widgets/Image/images/Image.PNG",
      "title":"图片 组件演示",
      "subtitle":"Image 组件演示",
      "route":"/Image",
    },
    {
      "image":"images/fluter.PNG",
      "title":"ListView 组件演示",
      "subtitle":"ListView 组件演示",
      "route":"/ListView",
    },
    {
      "image":"images/fluter.PNG",
      "title":"Card 组件演示",
      "subtitle":"Card 组件演示",
      "route":"/Card",
    },
    {
      "image":"images/fluter.PNG",
      "title":"StatefulWidget 有状态组件演示",
      "subtitle":"StatefulWidget",
      "route":"/StatefulWidget",
    },
    {
      "image":"images/fluter.PNG",
      "title":"Button 组件演示",
      "subtitle":"Button 组件演示",
      "route":"/button",
    },
    {
      "image":"images/fluter.PNG",
      "title":"Dialog 组件演示",
      "subtitle":"Dialog 组件演示",
      "route":"/dialog",
    },
    {
      "image":"images/fluter.PNG",
      "title":"tabbar",
      "subtitle":"tabbar 组件演示",
      "route":"/tabbar",
    },
    {
      "image":"images/fluter.PNG",
      "title":"日期时间 组件演示",
      "subtitle":"日期时间 组件演示",
      "route":"/datetime",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowItemComponent(title:"基础组件的使用", configs:_configs);
  }
}
