import 'package:flutter/material.dart';
import 'package:helloworld/components/MyIcon.dart';

/// 层叠容器组件 Stack的使用
class MyStackA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.5, 0.5),
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        MyIcon(Icons.home, color: Colors.blue,),
        Text("我是一个文本"),
      ],
    );
  }
}

/// 使用Align组件控制Stack中的子组件的位置
class MyStackB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 400,
          width: 300,
          color: Colors.redAccent,
          child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-0.5, 0.2),
                    child: MyIcon(Icons.home, size: 100.0, color: Colors.blue,),
                  ),
                  Align(
                    alignment: Alignment(-0.8, -0.7),
                    child: MyIcon(Icons.pages, size: 80.0, color: Colors.yellow,),
                  ),
                  Align(
                    alignment: Alignment(0.5, 0.6),
                    child: Text("我是一个文"),
                  ),
                ],
              ),
    );
  }
}

/// 使用Positioned组件控制Stack中的子组件的位置
class MyStackC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 400,
          width: 300,
          color: Colors.redAccent,
          child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    top: 30,
                    child: MyIcon(Icons.home, size: 100.0, color: Colors.blue,),
                  ),
                  Positioned(
                    right: 20,
                    top: 40,
                    child: MyIcon(Icons.pages, size: 80.0, color: Colors.yellow,),
                  ),
                  Positioned(
                    top: 220,
                    child: Text("我是一个文"),
                  ),
                ],
              ),
    );
  }
}


class StackShowPage extends StatelessWidget {
  final String _title;
  final Widget _widget;
  const StackShowPage({String title, Widget widget, Key key})
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

class StackPage extends StatelessWidget {
  final List _configs = [
    {
      "title": "层叠容器组件 Stack的使用",
      "widget": MyStackA(),
    },
    {
      "title": "使用Align组件控制Stack中的子组件的位置",
      "widget": MyStackB(),
    },
    {
      "title": "使用Positioned组件控制Stack中的子组件的位置",
      "widget": MyStackC(),
    },
  ];
  StackPage({Key key}) : super(key: key);

  List<Widget> _items(context) {
    var items = this._configs.map((e) => RaisedButton(
           child: Text(e["title"]),
           onPressed: () {
             Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return StackShowPage(title:e["title"], widget:e["widget"]);
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
      appBar: AppBar(title: Text("Stack 层叠容器组件演示")),
      body: Column(
        children: this._items(context),
      )
    );
  }
}
