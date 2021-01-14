import 'package:flutter/material.dart';

/// 自定义有状态组件
class MyStatefulWidgetA extends StatefulWidget {
  MyStatefulWidgetA({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetAState createState() => _MyStatefulWidgetAState();
}

class _MyStatefulWidgetAState extends State<MyStatefulWidgetA> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
       children: <Widget>[
         Chip(
           label: Text("${this._count}"),
         ),
         RaisedButton(
           child: Text("加1"),
           onPressed: () {
             // 需要调用setState来改变显示的数据
             setState(() {
               this._count++;
             });
           },
         )
       ],
    );
  }
}

class MyStatefulWidgetB extends StatefulWidget {
  MyStatefulWidgetB({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetBState createState() => _MyStatefulWidgetBState();
}

class _MyStatefulWidgetBState extends State<MyStatefulWidgetB> {
  List _list = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this._list.map((e){
            return ListTile(
              title: Text(e),
            );
          }).toList(),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              this._list.add("item");
            });
          },
        )
      ],
    );
  }
}


class StatefulWidgetShowPage extends StatelessWidget {
  final String _title;
  final Widget _widget;
  const StatefulWidgetShowPage({String title, Widget widget, Key key})
    : this._title = title,
      this._widget = widget,
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this._title)),
      body: this._widget
    );
  }
}

class StatefulWidgetPage extends StatelessWidget {
  final List _configs = [
    {
      "title": "有状态组件 1",
      "widget": MyStatefulWidgetA(),
    },
    {
      "title": "有状态组件 2",
      "widget": MyStatefulWidgetB(),
    },
  ];
  StatefulWidgetPage({Key key}) : super(key: key);

  List<Widget> _items(context) {
    var items = this._configs.map((e) => RaisedButton(
           child: Text(e["title"]),
           onPressed: () {
             Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return StatefulWidgetShowPage(title:e["title"], widget:e["widget"]);
                      },
                    )
                  );
           },
           color: Theme.of(context).accentColor,
         ));
      return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StatefulWidget 有状态组件演示")),
      body: Column(
        children: this._items(context),
      )
    );
  }
}
