import 'package:flutter/material.dart';


class FloatingActionButtonExampleA extends StatelessWidget {
  const FloatingActionButtonExampleA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text("FloatingActionButton 组件演示"),
      //),
      body: Text("FloatingActionButton 组件演示"),
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      // 设置浮动按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
