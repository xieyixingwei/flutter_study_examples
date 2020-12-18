import 'package:flutter/material.dart';

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
