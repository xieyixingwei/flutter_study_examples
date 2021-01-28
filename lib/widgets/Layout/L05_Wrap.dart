import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';

/// 按钮组件MyRaisedButton
class MyRaisedButton extends StatelessWidget {
  final String _title;
  MyRaisedButton(this._title);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this._title),
      textColor: Theme.of(context).accentColor, // 使用主题的颜色
      onPressed: (){

      },
    );
  }
}

/// 
class WrapExampleA extends ShowPage {
  final String title = "Wrap";
  final String subtitle = "流布局(会自动换行)";

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: <Widget>[
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
      ],
    );
  }
}


