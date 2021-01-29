import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';

/// 自定义有状态组件
class StatefulWidgetExampleA extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "StatefulWidget 实例1";

  StatefulWidgetExampleA({Key key}) : super(key: key);

  @override
  _StatefulWidgetExampleA createState() => _StatefulWidgetExampleA();
}

class _StatefulWidgetExampleA extends State<StatefulWidgetExampleA> {
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

class StatefulWidgetExampleB extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "StatefulWidget 实例2";

  StatefulWidgetExampleB({Key key}) : super(key: key);

  @override
  _StatefulWidgetExampleB createState() => _StatefulWidgetExampleB();
}

class _StatefulWidgetExampleB extends State<StatefulWidgetExampleB> {
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
