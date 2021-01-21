import 'package:flutter/material.dart';
import 'package:helloworld/components/MyIcon.dart';


/// Colum组件和ListView的区别是ListView的宽度会铺满整个显示区域的宽度
/// 而Colum组件的宽度是子元素的宽度
class ColumnExampleA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
