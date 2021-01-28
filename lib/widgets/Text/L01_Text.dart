import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';

/// Text组件的使用
class TextExampleA extends ShowPage {
  final String image = "lib/widgets/Text/images/Text.PNG";
  final String title = "Text 组件的使用";
  final String subtitle = "";
  final String document = null;

  @override
  Widget build(BuildContext context) {
    return Text(
            "Text 组件的使用，以及样式设置",    // 文本值
            textAlign: TextAlign.left,        // 对齐
            textDirection: TextDirection.ltr, // 方向(左到右/右到左)
            //strutStyle: StrutStyle(
            //
            //),
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
              backgroundColor: Colors.grey,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 5,
    );
  }
}
