import 'package:flutter/material.dart';
import 'package:helloworld/components/MyIcon.dart';


/// Row 的使用
/// Row的子元素的宽度不会自动拉伸
class RowExampleA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.home),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.pages),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.tab),
        ),
      ],
    );
  }
}
