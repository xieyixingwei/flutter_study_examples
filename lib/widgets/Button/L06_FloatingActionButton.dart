import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class FloatingActionButtonExampleA extends ShowPage {
  final String title = "FloatingActionButton";

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
