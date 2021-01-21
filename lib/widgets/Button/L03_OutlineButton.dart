import 'package:flutter/material.dart';


class OutlineButtonExampleA extends StatelessWidget {
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
