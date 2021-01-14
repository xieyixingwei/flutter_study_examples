import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List _configs = [
    {
      "title":"Text 组件演示",
      "route":"/Text",
    },
    {
      "title":"Container 组件演示",
      "route":"/Container",
    },
    {
      "title":"图片 组件演示",
      "route":"/Image",
    },
    {
      "title":"ListView 组件演示",
      "route":"/ListView",
    },
    {
      "title":"GridView 布局组件演示",
      "route":"/GridView",
    },
    {
      "title":"布局 组件演示",
      "route":"/layout",
    },
    {
      "title":"Stack 层叠组件演示",
      "route":"/Stack",
    },
    {
      "title":"AspectRatio 组件演示",
      "route":"/AspectRatio",
    },
    {
      "title":"Card 组件演示",
      "route":"/Card",
    },
    {
      "title":"StatefulWidget 有状态组件演示",
      "route":"/StatefulWidget",
    },
    {
      "title":"Button 组件演示",
      "route":"/buttonpage",
    },
    {
      "title":"日期时间 组件演示",
      "route":"/datetimepage",
    },
    {
      "title":"Dialog 组件演示",
      "route":"/dialogpage",
    },
    {
      "title":"DIO 实现网络请求演示",
      "route":"/diopage",
    },
  ];

  List<Widget> _items(BuildContext context) {
    var items = this._configs.map((e) => RaisedButton(
                  child: Text(e["title"]),
                  onPressed: () {
                    Navigator.pushNamed(context,e["route"]);
                  },
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ));
    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //child: MyStatefulWidgetB(),
      child: Column(
        children: this._items(context),
      ),
    );
  }
}
