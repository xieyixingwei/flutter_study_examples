import 'package:flutter/material.dart';

class BaseWidgetPage extends StatefulWidget {
  BaseWidgetPage({Key key}) : super(key: key);

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidgetPage> {
    final List _configs = [
    {
      "title":"Text 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/Text",
    },
    {
      "title":"Container 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/Container",
    },
    {
      "title":"图片 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/Image",
    },
    {
      "title":"ListView 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/ListView",
    },
    {
      "title":"GridView 布局组件演示",
      "subtitle":"Text 组件演示",
      "route":"/GridView",
    },
    {
      "title":"布局 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/layout",
    },
    {
      "title":"Stack 层叠组件演示",
      "subtitle":"Text 组件演示",
      "route":"/Stack",
    },
    {
      "title":"AspectRatio 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/AspectRatio",
    },
    {
      "title":"Card 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/Card",
    },
    {
      "title":"StatefulWidget 有状态组件演示",
      "subtitle":"Text 组件演示",
      "route":"/StatefulWidget",
    },
    {
      "title":"Button 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/buttonpage",
    },
    {
      "title":"日期时间 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/datetimepage",
    },
    {
      "title":"Dialog 组件演示",
      "subtitle":"Text 组件演示",
      "route":"/dialogpage",
    },
    {
      "title":"DIO 实现网络请求演示",
      "subtitle":"Text 组件演示",
      "route":"/diopage",
    },
  ];

  List<Widget> _items() {
    var items = _configs.map((e) => Container(
        child: Column(
          children: [
            Image.asset(
                "images/2.0x/a.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.cover
            ),
            ListTile(
              title: Text(e["title"]),
              subtitle: Text(e["subtitle"]),
              onTap: () => {
                Navigator.pushNamed(context, e["route"])
              },
            ),
          ],
        ),
      ));

    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: _items(),
    );
  }
}
//InkWell
