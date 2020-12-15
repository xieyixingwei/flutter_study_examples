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
