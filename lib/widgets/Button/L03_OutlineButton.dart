import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class OutlineButtonExampleA extends ShowPage {
  final String title = "OutlineButton";
  final String subtitle = "不能设置OutlineButton的背景色";
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
            child: Text("OutlineButton"),
            color: Colors.red, // 不能设置OutlineButton的背景色
            textColor: Colors.green,
            onPressed: () {
              
            },
          );
  }
}
