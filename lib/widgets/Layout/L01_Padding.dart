import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


/// Padding 的使用
class PaddingExampleA extends ShowPage {
  final String title = "Padding";
  final String subtitle = "设置Widget的内边距";

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.7,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
