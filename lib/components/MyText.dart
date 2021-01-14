import 'package:flutter/material.dart';

/// Text组件的使用
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
            "Text 组件的使用，以及样式设置",
            textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.dashed,
                letterSpacing: 30,
                //color: Colors.blue,
                color: Color.fromRGBO(200, 23, 121, 0.5),
              ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 5,
    );
  }
}


class TextPage extends StatelessWidget {
  const TextPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget 组件演示")),
      body: MyText()
    );
  }
}
